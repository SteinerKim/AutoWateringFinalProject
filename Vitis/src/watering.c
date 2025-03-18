/*
Authors: Kim Steiner and Cameron Castillo
Date: 3/7/2025
Purpose: This application is the Artix Garden Watering system. This system uses FreeRTOS
to implement the watering system. A UART is used for communication between a GUI running
on a PC and this application. A protocol is used to communicate what the current water
level is in terms of dry-needs water, no water needed, or over-watered.

The Artix Garden will contain two plants.

The application Demonstrates usage of Queues, Semaphores, Tasking model.  The application
will toggle an LED to represent the watering of a plant.

Application - Read UART for commands.  Execute commands.  Commands are:
'W<plant>' - Water plant
'S<plant>' - Stop watering plant
'T' - request temperature/humidity
'N<plant>' - request moisture level of the plant.  Returns 'A' and two bytes of sensor
data.

Upon receiving a 'W' command, that plant will be "watered" by turning on an LED.
Upon receiving a 'S' command, that plant will stop being watered by turning off an LED.

Assumptions:
o Nexys4IO is connected to LEDs. (Could also use another GPIO instance
 o GPIO, channel 2 is used for temperature sensor)
*/

/* Kernel includes. */
#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"
#include "timers.h"
#include "semphr.h"
#include "xparameters.h"
#include "xil_printf.h"
#include "nexys4IO.h"
#include "xuartlite.h"
#include "xuartlite_l.h"
#include <stdlib.h>
#include "platform.h"

/* BSP includes. */
#include "xtmrctr.h"
#include "xgpio.h"
#include "xsysmon.h"
#include "sleep.h"

/*Definitions for NEXYS4IO Peripheral*/
#define N4IO_DEVICE_ID           XPAR_NEXYS4IO_0_DEVICE_ID
#define N4IO_BASEADDR            XPAR_NEXYS4IO_0_S00_AXI_BASEADDR
#define N4IO_HIGHADDR            XPAR_NEXYS4IO_0_S00_AXI_HIGHADDR

/* DHT22 temp sensor additions, using gpio channel 2 */
#define GPIO_DEVICE_ID          XPAR_GPIO_0_DEVICE_ID
#define GPIO_CHANNEL            ( 2 )
#define DHT22_DATA_PIN          ( 0x1 )

#define mainQUEUE_LENGTH        ( 10 )

/* A block time of 0 simply means, "don't block". */
#define mainDONT_BLOCK                        ( portTickType ) 0

// maximum uart buffer size
#define BUFFER_SIZE        (128)
#define DHT22_TIMEOUT      (1000)
#define RX_ID              (0)
#define TEMP_ID            (1)
#define ERR_ID             (2)

// Create Instances
XUartLite UartLite;
XUartLite_Config *Config;
XSysMon SysMonInst;  // Create an instance of the SysMon driver
XGpio Gpio;

//Function Declarations
static uint32_t prvSetupHardware( void );
void SendData(const char *data);
void send_uint16_as_bytes(XUartLite *uart_instance, uint16_t data);
static void ParseData(uint8_t *buffer, int length);
void vParseInputTask( void *pvParams);
void que_rx (void *p);
void que_tx (void *p);
void vReadTemperatureTask(void *pvParameters);

// Declare a Semaphores
xSemaphoreHandle binary_sem;
xSemaphoreHandle temp_sem;

/* The queue used by the queue send and queue receive tasks. */
static xQueueHandle xQueue = NULL;
static xQueueHandle xTxQueue = NULL;

// UART interrup service routine
static void vUART_ISR(void* pvParams) {
    // Send data to a FreeRTOS queue or buffer
    xSemaphoreGiveFromISR(binary_sem,NULL);
}

// structure passed to Display task
typedef struct {
    uint16_t taskID;        // 0 = Parse task, 1 = Temp task, 2 = error
    uint16_t data;          // current set point
} DispMessage;

int main(void)
{
    BaseType_t xReturn;
    // Announcement
    xil_printf("Hello from FreeRTOS Example\r\n");

    //Initialize the HW
    prvSetupHardware();

    // Create Semaphore for ISR
    vSemaphoreCreateBinary(binary_sem);

    // create semaphore for temp sensor
    vSemaphoreCreateBinary(temp_sem);

    /* Create the queues */
    xQueue = xQueueCreate( mainQUEUE_LENGTH, sizeof(DispMessage) );
    xTxQueue = xQueueCreate( mainQUEUE_LENGTH, sizeof( DispMessage ) );

    /* Sanity check that the queue was created. */
    configASSERT( xQueue );

    // Create Parse input task
    xReturn = xTaskCreate( vParseInputTask,
                ( const char * ) "Parse",
                configMINIMAL_STACK_SIZE,
                NULL,
                2,
                NULL );
    configASSERT(xReturn == pdPASS);

    // Create receive UART data task
    xReturn = xTaskCreate( que_rx,
                "RX",
                configMINIMAL_STACK_SIZE,
                NULL,
                2,
                NULL );
    configASSERT(xReturn == pdPASS);

    // Create UART TX task
    xReturn = xTaskCreate( que_tx,
                "TX",
                configMINIMAL_STACK_SIZE,
                NULL,
                2,
                NULL );
    configASSERT(xReturn == pdPASS);

    // Create the temperature reading task
    xReturn =xTaskCreate( vReadTemperatureTask,
               "ReadTemperature",
               configMINIMAL_STACK_SIZE,
               NULL,
               2,
               NULL );
    configASSERT(xReturn == pdPASS);

    XSysMon_Reset(&SysMonInst);

    uint16_t sensor_value = XSysMon_GetAdcData(&SysMonInst, XSM_CH_AUX_MIN+3);  // Channel 3 corresponds to A13/ADP3
    xil_printf("Raw Data (Channel 3): %d\r\n", sensor_value);

    // Start the Scheduler
    xil_printf("Starting the scheduler\r\n");
    vTaskStartScheduler();

    return -1;
}

// Setup function for Hardware.
// Install the interrupt handler for uartlite.  Configure the uartlite and Nexys4IO.
static uint32_t prvSetupHardware( void )
{
    uint32_t xStatus = XST_SUCCESS;

    xil_printf("Initializing Hardware\r\n");

    xStatus = xPortInstallInterruptHandler( XPAR_MICROBLAZE_0_AXI_INTC_AXI_UARTLITE_0_INTERRUPT_INTR, vUART_ISR, NULL );

    if( xStatus == pdPASS )
    {
        xil_printf("Uart interrupt handler installed\r\n");
        vPortEnableInterrupt(XPAR_MICROBLAZE_0_AXI_INTC_AXI_UARTLITE_0_INTERRUPT_INTR);

        xStatus = XSysMon_CfgInitialize(&SysMonInst, XSysMon_LookupConfig(XPAR_XADC_WIZ_0_DEVICE_ID), XPAR_XADC_WIZ_0_BASEADDR);
        if (xStatus != XST_SUCCESS) {
            xil_printf("SysMon initialization failed.\n");
            return XST_FAILURE;
        }

        // configure the uart
        Config = XUartLite_LookupConfig(XPAR_UARTLITE_0_DEVICE_ID);
        xStatus = XUartLite_CfgInitialize(&UartLite, Config, XPAR_UARTLITE_0_BASEADDR);

        XUartLite_EnableInterrupt(&UartLite);
    }

    // Initialize the GPIO driver
    XGpio_Initialize(&Gpio, GPIO_DEVICE_ID);

    // initialize the Nexys4 driver
    uint32_t status = NX4IO_initialize(N4IO_BASEADDR);
    if (status != XST_SUCCESS){
        return XST_FAILURE;
    }

    NX4IO_setLEDs(0); // initialize LEDS to off

    configASSERT( ( xStatus == XST_SUCCESS ) );
    return XST_SUCCESS;
}

// Function to parse incoming data from the UART.
// Handles data one byte at a time.
// Protocol is, where sensor is either 1 or 2:
// n<sensor> = request sensor data count
// w<sensor> = water sensor plant
// s<sensor> = stop watering sensor plant
static void ParseData(uint8_t *buffer, int length) {
    // Implement your parsing logic based on your protocol
    uint16_t sensor_value = 0;
    DispMessage msg;
    msg.taskID = RX_ID;

    for (int i = 0; i < length; i++) {
        if ((buffer[i] == 's') || (buffer[i] == 'S')) {          // handle stop watering
            i++;
            if (i < length && buffer[i] == '1') {                // stop watering plant 1
                NX4IO_setLEDs(NX4IO_getLEDS_DATA() ^ 0x1);
            } else if (i < length && buffer[i] == '2'){          // stop watering plant 2
                NX4IO_setLEDs(NX4IO_getLEDS_DATA() ^ 0x2);
            } else {
                buffer[i+1] = '\0';  // invalid command
                msg.taskID = ERR_ID;
                msg.data = 0;
                xQueueSend( xTxQueue, &msg, mainDONT_BLOCK );
                xil_printf("invalid protocol %s\r\n", buffer);
            }
        } else if ((buffer[i] == 'w') || (buffer[i] == 'W')) {   // handle watering
            i++;
            if (i < length && buffer[i] == '1') {                // start watering plant 1
                NX4IO_setLEDs(NX4IO_getLEDS_DATA() | 0x1);
            } else if (i < length && buffer[i] == '2'){          // start watering plant 2
                NX4IO_setLEDs(NX4IO_getLEDS_DATA() | 0x2);
            } else {
                buffer[i+1] = '\0';  // invalid command
                msg.taskID = ERR_ID;
                msg.data = 0;
                xQueueSend( xTxQueue, &msg, mainDONT_BLOCK );
                xil_printf("invalid protocol %s\r\n", buffer);
            }
        } else if ((buffer[i] == 'n') || (buffer[i] == 'N')) {   // handle sensor reading
            i++;
            if (i < length && buffer[i] == '1') {                // read sensor 1 reading
                sensor_value = XSysMon_GetAdcData(&SysMonInst, XSM_CH_AUX_MIN+3);  // Channel 3 corresponds to A13/ADP3
                msg.taskID = RX_ID;
                msg.data = sensor_value;
                xQueueSend( xTxQueue, &msg, mainDONT_BLOCK );
                xil_printf("Raw Data (Channel 3): %d\r\n", sensor_value);
            } else if (i < length && buffer[i] == '2') {         // read sensor 2 reading
                sensor_value = XSysMon_GetAdcData(&SysMonInst, XSM_CH_AUX_MIN+10);  // Channel 10 corresponds to A13/ADP3
                msg.taskID = RX_ID;
                msg.data = sensor_value;
                xQueueSend( xTxQueue, &msg, mainDONT_BLOCK );
                xil_printf("Raw Data (Channel 10): %d\r\n", sensor_value);
            } else {
                buffer[i+1] = '\0';
                msg.taskID = ERR_ID;
                msg.data = 0;
                xQueueSend( xTxQueue, &msg, mainDONT_BLOCK );
                xil_printf("invalid protocol %s\r\n", buffer);
            }
        } else if ((buffer[i] == 't') || (buffer[i] == 'T')) {    // temp sensor read
            xSemaphoreGive( temp_sem );
        } else {
            buffer[i+1] = '\0';  // invalid command
            msg.taskID = ERR_ID;
            msg.data = 0;
            xQueueSend( xTxQueue, &msg, mainDONT_BLOCK );
            xil_printf("invalid protocol %s\r\n", buffer);
        }
    }
}

// Parse input task receives a semaphore from the UART ISR, one byte at a time.
// Data is parsed when the buffer is full or a return character is received.
// Data is sent to a print task, via a message queue.
void vParseInputTask( void *pvParams)
{
    uint8_t data;
    uint8_t buffer[BUFFER_SIZE];
    uint16_t index = 0;
    DispMessage msg;
    msg.taskID = RX_ID;

    while(1) {
        if(xSemaphoreTake(binary_sem,500)){
            vTaskDelay(100);    // block for 1 second
            data = XUartLite_RecvByte(XPAR_UARTLITE_0_BASEADDR);     // receive a byte of data
            if (data == '\r' || index >= BUFFER_SIZE) {
                // parse the data
                ParseData(buffer, index);
                index = 0;
            } else {
                // put the data in the buffer
                buffer[index] = data;
                ++index;
            }
            msg.data = data;
            xQueueSend( xQueue, &msg, mainDONT_BLOCK );
        }
        else
            xil_printf("Semaphore time out\r\n");

    }
    vTaskDelete(NULL);
}

// receiver task to handle uart received data printing.
// Prints each character read.  Mainly for visual.
void que_rx (void *p)
{
    DispMessage msg;
    while(1){
        xQueueReceive( xQueue, &msg, portMAX_DELAY );
        if (msg.taskID == RX_ID)
            xil_printf("Queue Received: %c\r\n",msg.data);
        else if (msg.taskID == TEMP_ID)
            xil_printf("Temp Received: %d Humidity=%d\r\n", (msg.data&0xFF00)>>8, msg.data&0xFF);
    }
    vTaskDelete(NULL);
}

// Uart send task to respond to n<sensor> requests.
// Response is an acknowledgment, 'A', followed by the two bytes of a 16 bit sensor count.
void que_tx (void *p)
{
    DispMessage msg;
    char ACK = 'A';
    char terminator = 'Q';

    while(1) {
        xQueueReceive( xTxQueue, &msg, portMAX_DELAY );
        // copilot mentioned the disable/enable interrupt
        XUartLite_DisableInterrupt(&UartLite);
        if (msg.taskID != ERR_ID) { // valid data
            ACK = 'A';
            SendData(&ACK);    // send acknowledgement then the data
            send_uint16_as_bytes(&UartLite, msg.data);
        }
        else {
            ACK = 'E';
            SendData(&ACK);    // send error acknowledgement then the data
        }
        //Send terminator character
        SendData(&terminator);

        XUartLite_EnableInterrupt(&UartLite);
    }
    vTaskDelete(NULL);
}

// Function to toggle GPIO for the temperature sensor.  Busy
// wait only worked. Any vTaskDelay was too long and would
// halt temperature sensor from working. Initial code came from
// copilot.
static uint32_t wait_for_response(void)
{
    uint32_t timeout = 0;

    while (XGpio_DiscreteRead(&Gpio, GPIO_CHANNEL) & 1) {
        timeout++;
        if (timeout > DHT22_TIMEOUT) {
            return XST_FAILURE; // Timeout error
        }
    }

    timeout = 0;
    // Wait for the DATA pin to go high (80 us)
    while (!(XGpio_DiscreteRead(&Gpio, GPIO_CHANNEL) & 1)) {
        timeout++;
        if (timeout > DHT22_TIMEOUT) {
            return XST_FAILURE; // Timeout error
        }
    }
    timeout = 0;
    // Wait for the DATA pin to go low again (indicating data transmission start)
    while (XGpio_DiscreteRead(&Gpio, GPIO_CHANNEL) & 1) {
        timeout++;
        if (timeout > DHT22_TIMEOUT) {
            return XST_FAILURE; // Timeout error
        }
    }
    return XST_SUCCESS;
}

// task to read temperature/humidity DHT22 sensor
// Code from copilot and chatgpt morphed together in pieces to create
// a working task.
// After much testing, busy wait seemed the way to get the initial wait for
// sensor response to work.
void vReadTemperatureTask(void *pvParameters)
{
    uint32_t data;
    uint8_t databytes[5]; // 5 bytes to store the data
    uint16_t humidity, temperature; // calculated humidity and temperature
    uint8_t checksum;     // checksum stored
    uint32_t xStatus = XST_SUCCESS;
    DispMessage msg;
    msg.taskID = TEMP_ID;       // this task is task 1

    for (;;)
    {
        // Set GPIO as output
        /*XGpio_SetDataDirection(&Gpio, GPIO_CHANNEL, 0x0);

        // Send start signal
        XGpio_DiscreteWrite(&Gpio, GPIO_CHANNEL, 0);
        vTaskDelay(pdMS_TO_TICKS(18));  // Wait for at least 18ms
        XGpio_DiscreteWrite(&Gpio, GPIO_CHANNEL, 1);
        usleep(30);    // Wait for 20-40us

        // Set GPIO as input
        XGpio_SetDataDirection(&Gpio, GPIO_CHANNEL, 0x1);

        // Wait for DHT22 response (timing code to be added)
        xStatus = wait_for_response();
        if (xStatus != XST_SUCCESS) {
            xil_printf("Failed to setup sensor\r\n");
            continue;
        }

        // Now read the response of the sensor and then proceed to data read.
        // Read 40 bits from DHT22 (5 bytes)
        for (int j = 0; j < 5; ++j) {
            for (int i = 0; i < 8; i++) {

                while (XGpio_DiscreteRead(&Gpio, GPIO_CHANNEL) == 0);
                usleep(30);
                data = XGpio_DiscreteRead(&Gpio, GPIO_CHANNEL);
                // Shift in the data bit
                databytes[j] <<= 1;
                if (data != 0) {
                    databytes[j] |= 1;
                }
                while (XGpio_DiscreteRead(&Gpio, GPIO_CHANNEL) == 1);
            }
        }
        // Process temperature data, get only whole portion
        humidity = ((databytes[0]<<8) + (databytes[1])) / 10;
        temperature = ((databytes[2]<<8) + (databytes[3])) / 10;

        checksum = databytes[0] + databytes[1] + databytes[2] + databytes[3];

        // check that the checksum is correct
        if (checksum != databytes[4]) {
            xil_printf("checksum error in temp sensor\r\n");
            continue;
        }
*/
        humidity = 66;
        temperature = 17;

        if (xSemaphoreTake(temp_sem,0)) {
            // send data to TX queue and RX queue
            msg.data = (temperature<<8) | humidity;
            msg.taskID = TEMP_ID;
            xQueueSend( xTxQueue, &msg, mainDONT_BLOCK );
            xQueueSend( xQueue, &msg, mainDONT_BLOCK );
        }

        // Delay before the next reading
        vTaskDelay(pdMS_TO_TICKS(2000));  // DHT22 minimum sampling period is 2 seconds
    }
    vTaskDelete(NULL);
}

// Transmits a buffer of data to the UART.
void SendData(const char *data) {
    XUartLite_Send(&UartLite, (u8 *)data, strlen(data));
}

// Transmits a 16 bit of data to the UART.
void send_uint16_as_bytes(XUartLite *uart_instance, uint16_t data)
{
    uint8_t bytes[2];
    bytes[0] = (data >> 8) & 0xFF; // High byte
    bytes[1] = data & 0xFF;        // Low byte

    XUartLite_Send(uart_instance, bytes, 2);
}


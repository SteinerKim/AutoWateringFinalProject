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

Application - Toggle LEDs on each button interrupt. Could modify to include switches

Flow diagram
GPIO Interrupt (BTN) --> ( ISR )Send a Semaphore --> Task 1 (Catch the Semaphore) -->
-->Task 1 - Send a Queue to Task -2 --> Task 2 Receive the queue --> Write to GPIO (LED)

Assumptions:
o Nexys4IO is connected to LEDs. (Could also use another GPIO instance
 o GPIO_1 is capable of generating an interrupt and is connect to the switches and buttons
(see project #2 write-up for details)
o AXI Timer 0 is a dual 32-bit timer with the Timer 0 interrupt used to generate
 the FreeRTOS sys tick.
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
#define N4IO_DEVICE_ID		    XPAR_NEXYS4IO_0_DEVICE_ID
#define N4IO_BASEADDR		    XPAR_NEXYS4IO_0_S00_AXI_BASEADDR
#define N4IO_HIGHADDR		    XPAR_NEXYS4IO_0_S00_AXI_HIGHADDR

#define BTN_CHANNEL		1
#define SW_CHANNEL		2

#define mainQUEUE_LENGTH					( 10 )

/* A block time of 0 simply means, "don't block". */
#define mainDONT_BLOCK						( portTickType ) 0

// maximum uart buffer size
#define BUFFER_SIZE		(128)

//Create Instances
XUartLite UartLite;
XUartLite_Config *Config;
XSysMon SysMonInst;  // Create an instance of the SysMon driver

//Function Declarations
static uint32_t prvSetupHardware( void );
void SendData(const char *data);
void send_uint16_as_bytes(XUartLite *uart_instance, uint16_t data);
static void ParseData(uint8_t *buffer, int length);
void vParseInputTask( void *pvParams);
void que_rx (void *p);
void que_tx (void *p);

// Declare a Semaphore
xSemaphoreHandle binary_sem;

/* The queue used by the queue send and queue receive tasks. */
static xQueueHandle xQueue = NULL;
static xQueueHandle xTxQueue = NULL;

// UART interrup service routine
static void vUART_ISR(void* pvParams) {
    // Send data to a FreeRTOS queue or buffer
    xSemaphoreGiveFromISR(binary_sem,NULL);
}

int main(void)
{
	BaseType_t xReturn;
	// Announcement
	xil_printf("Hello from FreeRTOS Example\r\n");

	//Initialize the HW
	prvSetupHardware();

	SendData("hello");

	//Create Semaphore
	vSemaphoreCreateBinary(binary_sem);

	/* Create the queues */
	xQueue = xQueueCreate( mainQUEUE_LENGTH, sizeof( uint16_t ) );
	xTxQueue = xQueueCreate( mainQUEUE_LENGTH, sizeof( uint16_t ) );

	/* Sanity check that the queue was created. */
	configASSERT( xQueue );

	//Create Parse input task
	xReturn = xTaskCreate( vParseInputTask,
				 ( const char * ) "TX",
				 configMINIMAL_STACK_SIZE,
				 NULL,
				 2,
				 NULL );

	//Create receive UART data task
	xReturn = xTaskCreate( que_rx,
				"RX",
				configMINIMAL_STACK_SIZE,
				NULL,
				2,
				NULL );

	// Create UART TX task
	xReturn = xTaskCreate( que_tx,
					"RX",
					configMINIMAL_STACK_SIZE,
					NULL,
					2,
					NULL );

	XSysMon_Reset(&SysMonInst);

	uint16_t sensor_value = XSysMon_GetAdcData(&SysMonInst, XSM_CH_AUX_MIN+3);  // Channel 3 corresponds to A13/ADP3
	xil_printf("Raw Data (Channel 3): %d\r\n", sensor_value);

	//Start the Scheduler
	xil_printf("Starting the scheduler\r\n");
	xil_printf("Push Button to change the LED pattern\r\n\r\n");
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
	for (int i = 0; i < length; i++) {
		if ((buffer[i] == 's') || (buffer[i] == 'S')) {		// handle stop watering
			i++;
			if (i < length && buffer[i] == '1') {			// stop watering plant 1
				NX4IO_setLEDs(NX4IO_getLEDS_DATA() ^ 0x1);
			} else if (i < length && buffer[i] == '2'){ 	// stop watering plant 2
				NX4IO_setLEDs(NX4IO_getLEDS_DATA() ^ 0x2);
			} else {
				buffer[i+1] = '\0';
				xil_printf("invalid protocol %s\r\n", buffer);
			}
		} else if ((buffer[i] == 'w') || (buffer[i] == 'W')) {	// handle watering
			i++;
			if (i < length && buffer[i] == '1') {				// start watering plant 1
				NX4IO_setLEDs(NX4IO_getLEDS_DATA() | 0x1);
			} else if (i < length && buffer[i] == '2'){			// start watering plant 2
				NX4IO_setLEDs(NX4IO_getLEDS_DATA() | 0x2);
			} else {
				buffer[i+1] = '\0';
				xil_printf("invalid protocol %s\r\n", buffer);
			}
		} else if ((buffer[i] == 'n') || (buffer[i] == 'N')) {	// handle sensor reading
			i++;
			if (i < length && buffer[i] == '1') {				// read sensor 1 reading
				sensor_value = XSysMon_GetAdcData(&SysMonInst, XSM_CH_AUX_MIN+3);  // Channel 3 corresponds to A13/ADP3
				xQueueSend( xTxQueue, &sensor_value, mainDONT_BLOCK );
				xil_printf("Raw Data (Channel 3): %d\r\n", sensor_value);
			} else if (i < length && buffer[i] == '2') {		// read sensor 2 reading
				sensor_value = XSysMon_GetAdcData(&SysMonInst, XSM_CH_AUX_MIN+10);  // Channel 10 corresponds to A13/ADP3
				xQueueSend( xTxQueue, &sensor_value, mainDONT_BLOCK );
				xil_printf("Raw Data (Channel 10): %d\r\n", sensor_value);
			} else {
				buffer[i+1] = '\0';
				xil_printf("invalid protocol %s\r\n", buffer);
			}
		} else {
			buffer[i+1] = '\0';
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

	while(1) {
		if(xSemaphoreTake(binary_sem,500)){
			vTaskDelay(100);	// block for 1 second
			data = XUartLite_RecvByte(XPAR_UARTLITE_0_BASEADDR); 	// receive a byte of data
			if (data == '\r' || index >= BUFFER_SIZE) {
				// parse the data
				ParseData(buffer, index);
				index = 0;
			} else {
				// put the data in the buffer
				buffer[index] = data;
				++index;
			}

			xQueueSend( xQueue, &data, mainDONT_BLOCK );
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
	uint16_t data;
	while(1){
		xQueueReceive( xQueue, &data, portMAX_DELAY );
		xil_printf("Queue Received: %c\r\n",data);
	}
	vTaskDelete(NULL);
}

// Uart send task to respond to n<sensor> requests.
// Response is an acknowledgment, 'A', followed by the two bytes of a 16 bit sensor count.
void que_tx (void *p)
{
	uint16_t data;
	const char ACK = 'A';
	while(1){
		xQueueReceive( xTxQueue, &data, portMAX_DELAY );
		// copilot mentioned the disable/enable interrupt
		XUartLite_DisableInterrupt(&UartLite);
		SendData(&ACK);	// send acknowledgement then the data
		send_uint16_as_bytes(&UartLite, data);
		XUartLite_EnableInterrupt(&UartLite);
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


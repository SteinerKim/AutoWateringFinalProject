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
 the FreeRTOS systick.
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
static XGpio xInputGPIOInstance;
XUartLite UartLite;
XUartLite_Config *Config;
XSysMon SysMonInst;  // Create an instance of the SysMon driver

//Function Declarations
static void prvSetupHardware( void );


//Declare a Semaphore
xSemaphoreHandle binary_sem;

/* The queue used by the queue send and queue receive tasks. */
static xQueueHandle xQueue = NULL;

void vUART_ISR(void) {
    //uint8_t data = XUartLite_RecvByte(XPAR_UARTLITE_0_BASEADDR);
    // Process received data
    // Send data to a FreeRTOS queue or buffer
    xSemaphoreGiveFromISR(binary_sem,NULL);
}

// Simple parse function.
static void ParseData(uint8_t *buffer, int length) {
    // Implement your parsing logic based on your protocol
	uint16_t sensor_value = 0;
    for (int i = 0; i < length; i++) {
        if (buffer[i] == 's') {

        } else if (buffer[i] == 'd') {
            i++;
            if (i < length && buffer[i] == '1') {
            	sensor_value = XSysMon_GetAdcData(&SysMonInst, XSM_CH_AUX_MIN+3);  // Channel 3 corresponds to A13/ADP3
            	xil_printf("Raw Data (Channel 3): %d\r\n", sensor_value);
            } else if (i < length && buffer[i] == '2'){
            	sensor_value = XSysMon_GetAdcData(&SysMonInst, XSM_CH_AUX_MIN+10);  // Channel 10 corresponds to A13/ADP3
            	xil_printf("Raw Data (Channel 10): %d\r\n", sensor_value);
            } else {
            	xil_printf("invalid protocol %s\r\n", buffer);
            }
        } else {

        }
    }
}


//A task which takes the Interrupt Semaphore and sends a queue to task 2.
void vParseInputTask( void *pvParams)
{
	uint8_t data;
	uint8_t buffer[BUFFER_SIZE];
	uint16_t index = 0;

	while(1) {
		if(xSemaphoreTake(binary_sem,500)){
			vTaskDelay(100);	// block for 1 second
			data = XUartLite_RecvByte(XPAR_UARTLITE_0_BASEADDR);
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
}

// receiver task to handle uart
void que_rx (void *p)
{
	uint16_t data;
	while(1){
		xQueueReceive( xQueue, &data, portMAX_DELAY );
		//uint8_t data = XUartLite_RecvByte(XPAR_UARTLITE_0_BASEADDR);
		//Write to LED.
		//NX4IO_setLEDs(ReceivedValue);
		xil_printf("Queue Received: %c\r\n",data);
	}
}

void SendData(const char *data) {
    XUartLite_Send(&UartLite, (u8 *)data, strlen(data));
}

int main(void)
{
	// Announcement
	xil_printf("Hello from FreeRTOS Example\r\n");

	//Initialize the HW
	prvSetupHardware();

	SendData("hello");

	//Create Semaphore
	vSemaphoreCreateBinary(binary_sem);

	/* Create the queue */
	xQueue = xQueueCreate( mainQUEUE_LENGTH, sizeof( uint16_t ) );

	/* Sanity check that the queue was created. */
	configASSERT( xQueue );

	//Create Task1
	xTaskCreate( vParseInputTask,
				 ( const char * ) "TX",
				 configMINIMAL_STACK_SIZE,
				 NULL,
				 1,
				 NULL );

	//Create Task2
	xTaskCreate( que_rx,
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


static void prvSetupHardware( void )
{
	uint32_t xStatus = XST_SUCCESS;
	const unsigned char ucSetToInput = 0xFFU;

	xil_printf("Initializing GPIO's\r\n");

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


	configASSERT( ( xStatus == XST_SUCCESS ) );
}


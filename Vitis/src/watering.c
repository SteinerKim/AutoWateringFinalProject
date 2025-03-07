/* Sample FreeRTOS application

The application Demonstrates usage of Queues, Semaphores, Tasking model.

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
#include "sleep.h"

/*Definitions for NEXYS4IO Peripheral*/
#define N4IO_DEVICE_ID		    XPAR_NEXYS4IO_0_DEVICE_ID
#define N4IO_BASEADDR		    XPAR_NEXYS4IO_0_S00_AXI_BASEADDR
#define N4IO_HIGHADDR		    XPAR_NEXYS4IO_0_S00_AXI_HIGHADDR

#define BTN_CHANNEL		1
#define SW_CHANNEL		2

#define mainQUEUE_LENGTH					( 1 )

/* A block time of 0 simply means, "don't block". */
#define mainDONT_BLOCK						( portTickType ) 0

//Create Instances
static XGpio xInputGPIOInstance;
XUartLite UartLite;
XUartLite_Config *Config;

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



void UartLiteHandler(void *CallBackRef, unsigned int ByteCount) {
    BaseType_t xHigherPriorityTaskWoken = pdFALSE;
    uint8_t data = XUartLite_RecvByte(XPAR_UARTLITE_0_BASEADDR);
    xQueueSendFromISR(xQueue, &data, &xHigherPriorityTaskWoken);
    portYIELD_FROM_ISR(xHigherPriorityTaskWoken);

    xSemaphoreGiveFromISR(binary_sem,NULL);

}

//A task which takes the Interrupt Semaphore and sends a queue to task 2.
void sem_taken_que_tx (void *p)
{

	uint16_t ValueToSend = 0x00FF;

	while(1)
	if(xSemaphoreTake(binary_sem,500)){
		xil_printf("Queue Sent: %d\r\n",ValueToSend);
		xQueueSend( xQueue, &ValueToSend, mainDONT_BLOCK );
		ValueToSend = ~ValueToSend;//Toggle for next time.
	}
	else
		xil_printf("Semaphore time out\r\n");
}

void que_rx (void *p)
{

	uint16_t ReceivedValue;
	while(1){
		xQueueReceive( xQueue, &ReceivedValue, portMAX_DELAY );
		uint8_t data = XUartLite_RecvByte(XPAR_UARTLITE_0_BASEADDR);
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
	xTaskCreate( sem_taken_que_tx,
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

		/* Set switches and buttons to input. */
	//	XGpio_SetDataDirection( &xInputGPIOInstance, BTN_CHANNEL, ucSetToInput );
	//	XGpio_SetDataDirection( &xInputGPIOInstance, SW_CHANNEL, ucSetToInput );

		Config = XUartLite_LookupConfig(XPAR_UARTLITE_0_DEVICE_ID);
		xStatus = XUartLite_CfgInitialize(&UartLite, Config, XPAR_UARTLITE_0_BASEADDR);

		//XUartLite_SetRecvHandler(&UartLite, UartLiteHandler, &UartLite);
		XUartLite_EnableInterrupt(&UartLite);
	}

	// initialize the Nexys4 driver
	uint32_t status = NX4IO_initialize(N4IO_BASEADDR);
	if (status != XST_SUCCESS){
		return XST_FAILURE;
	}


	configASSERT( ( xStatus == XST_SUCCESS ) );
}


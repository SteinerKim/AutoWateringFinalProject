'''
Board Interface

@author Cameron Castillo
@author Kim Steiner

@brief

This class is meant to setup a separate thread for the GUI
to properly send and receive data from the Microblaze. Samples
for the GUI are received on a periodic basis based on an 
interval defined in a text box in the GUI.

At the time interval, the program must send a character to the
Microblaze and receive a response. The response is loaded to a
queue to be written onto the plot on the GUI. This class handles
the creation of the thread and underlying helper functions.

'''

import time
import queue
from threading import *
from serial_class import uart
import logging as log

class Interface:

    def __init__(self, interval_queue, meas_queue, uart = None):
        '''
        init
        
        @param interval_queue pass in time interval from gui
        (in seconds)
        @param meas_queue pass out measurement data
        @param uart pass in uart object from GUI

        '''
        #logger
        logger = log.getLogger(__name__)

        #create uart object
        if (uart_obj != None):
            self.uart = uart_obj
        else:
            self.uart = uart()

        #Create Queue objects back to gui
        self.interval_queue = interval_queue
        self.measure_queue = meas_queue

        #create interval
        try:
            self.interval_queue.get(timeout=10)
        except self.interval_queue.Empty as e:
            logger.warning(f'Empty iterval queue: {e}. Check that gui is writing \
                    to the queue before startup.')
            self.interval = min_to_sec(15) #default 15 minutes
        except self.interval_queue.ShutDown as e:
            logger.warning(f'Interval queue shut down: {e}')

    def handle_start_thread(self):
        '''
        handle start thread

        @brief Handle the button press from the GUI and pass into the 
        timer thread

        '''
        self.start_time = time.Time() #get time in seconds
        if self.timer_task == None:
            self.timer_task = Thread(target=timer_thread).start()

        #create another thread to check for new interval
        if self.interval_task == None:
            self.interval_task = Thread(target=interval_thread).start()


    def interval_thread(self):
        '''
        Interval Thread

        @brief

        Periodically check interval queue to get data from the gui at 
        a defined rate.
        '''
        if !self.interval_queue.empty():
            self.interval = self.interval_queue.get()
            logger.info(f'Interval Updated: {self.interval}')

    def timer_thread(self):
        '''
        Timer Thread

        @brief Periodically check time interval and send requests back
        to Microblaze for data

        '''
        if(self.start_time - time.Time() >= self.interval):
            #reset start time
            self.start_time = time.Time()

            #send query via request_moisture; add datapoint to queue
            try:
                self.meas_queue.put(request_moisture())
            except self.meas_queue.Full as e:
                logger.warning(f'Measure queue write error: {e}. Check that \
                        there is a proper timeslot to write from.')
            except self.meas_queue.ShutDown as e:
                logger.warning(f'Measure queue shut down: {e}')

    def toggle_water(self, water_state):
        '''
        Toggle Water

        @brief

        Send command to toggle the watering state of the board. 

        @param water_state boolean expressing watering state from gui
        
        '''
        logger.info(f'Toggling water state: {water_state}')
        self.uart.send('W') if water_state else self.uart.send('S')
        
    def request_moisture(self):
        '''
        Request Moisture

        @brief send a uart request to the Microblaze for moisture data

        @return moisture percentage (None if communication failed)

        '''
        #assert good uart comm
        assert self.uart.uart.is_open(), "No uart connection!"

        #write 'N' to artix; wait for response & return
        data = self.uart.send_receive(2, 'N')
        
        #check that 'A' was received with a byte for percent value
        logger.info(f'Received data: {data}')
        if data[0] != 'A':
            logger.warning(f'Improperly formatted data: {bytes(data)}. Check that \
                    you got what you expected.')
        
        return data[1]
        

    def min_to_sec(self, interval):
        '''
        min_to_seconds

        @brief turn minutes to seconds for interval
        
        '''
        return interval*60



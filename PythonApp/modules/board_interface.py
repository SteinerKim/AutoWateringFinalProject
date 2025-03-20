"""
Board Interface

@authors:
- Cameron Castillo
- Kim Steiner

@brief

This class sets up a separate thread for the GUI to properly send 
and receive data from the Microblaze. Samples for the GUI are received 
on a periodic basis based on an interval defined in a text box in the GUI.

At each interval, the program sends a request to the Microblaze and 
receives a response, which is placed in a queue for the GUI to process. 

This class manages the threading and communication logic.

@note this class was written by the authors and edited/reformatted by ChatGPT
"""

import time
import queue
from queue import Empty, Full
import threading
import logging
from serial_class import uart
from uart_commands import uart_commands

# Configure logging
logging.basicConfig(level=logging.INFO, format="%(asctime)s - %(levelname)s - %(message)s")
logger = logging.getLogger(__name__)

class Interface:
    def __init__(self, interval_queue, meas_queue, temp_queue, uart_obj=None):
        """
        Initializes the Interface class.

        @param interval_queue: Queue for receiving time intervals from the GUI (in seconds)
        @param meas_queue: Queue for sending measurement data to the GUI
        @param uart_obj: UART object for communication (if None, a new instance is created)
        """
        self.uart = uart_obj if uart_obj else uart()
        self.command = uart_commands(self.uart)
        self.interval_queue = interval_queue
        self.measure_queue = meas_queue
        self.temp_queue = temp_queue
        self.timer_task = None
        self.interval_task = None
        self.interval = self.get_initial_interval()
        self.interval_sensor_2 = 1.5*self.interval

    def get_initial_interval(self):
        """
        Fetch the initial interval from the queue or use a default value.
        """
        try:
            return self.interval_queue.get(timeout=1)
        except Empty:
            logger.warning("Empty interval queue. Using default interval: 15 minutes.")
            return self.min_to_sec(1)
        except Exception as e:
            logger.warning(f'Interval queue error: {e}')
            return self.min_to_sec(1)

    def handle_start_thread(self, root):
        """
        Starts the timer and interval-checking threads.

        @param root: GUI root object.
        """
        self.start_time = time.time()
        
        #perform first check for moisture to initialize device
        self.command.raw_command("S1")
        self.command.raw_command("S2")

        #start timer thread
        logger.info("Starting Timer Thread @ interval {int(self.interval)*1000}....")
        root.after(int(self.interval)*1000, self.timer_thread, root, 1)
        root.after(int(self.interval_sensor_2)*1000, self.timer_thread, root, 2)

        #start interval thread
        logger.info("Starting Interval Thread....")
        root.after(2000, self.interval_thread, root)

        #start temperature thread
        logger.info("Starting Temperature Thread....")
        root.after(2500, self.temp_thread, root)

    def interval_thread(self, root):
        """
        Periodically checks the interval queue for updates from the GUI.
        
        @param root: GUI root object.
        """
        try:
            new_interval = self.interval_queue.get(timeout=1)
            self.interval = new_interval
            logger.info(f"Interval updated: {self.interval} seconds")
        except Empty:
            logger.debug(f'Empty Interval Queue')
        except Exception as e:
            logger.warning(f'Error in interval thread: {e}')
        
        #call again after 2 seconds
        root.after(2000, self.interval_thread, root)

    def temp_thread(self, root):
        """
        Periodically get temperature (every 5 minutes)

        @param root: tkinter root for root.after function.
        """
        humid_data, temp_data = self.command.get_temperature()
        if humid_data and temp_data:
            try:
                self.temp_queue.put((temp_data, humid_data))
            except Full:
                logger.warning(f'Put element on full temperature queue!')

        #call again after 5 minutes
        root.after(self.min_to_ms(5), self.temp_thread, root)

    def timer_thread(self, root, sensor):
        """
        Periodically requests data from the Microblaze at the defined interval.
        
        @param root: GUI root object.
        @param sensor: sensor number for thread
        """
        #if time.time() - self.start_time >= \
        #        (self.interval if sensor==1 else self.interval_sensor_2):
        #    self.start_time = time.time()

        try:
            moisture_data = self.command.get_moisture(sensor)
            if moisture_data is not None:
                #put sensor number as well as data on queue
                self.measure_queue.put((moisture_data, sensor))
        except Full:
            logger.warning("Put element on full measure queue!")
        
        #call again after interval ms
        interval_sec = self.interval if sensor==1 else self.interval_sensor_2
        root.after(int(interval_sec*1000), self.timer_thread, root, sensor)

    @staticmethod
    def min_to_sec(interval):
        """
        Converts minutes to seconds.

        @param interval: Time in minutes
        @return: Time in seconds
        """
        return interval * 60

    @staticmethod
    def min_to_ms(interval):
        """
        Convert minutes to ms

        @param interval: Time in minutes
        @return: Time in milliseconds
        """
        return interval*60*1000

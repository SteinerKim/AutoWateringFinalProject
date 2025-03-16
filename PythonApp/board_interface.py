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
    def __init__(self, interval_queue, meas_queue, uart_obj=None):
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
        self.timer_task = None
        self.interval_task = None
        self.interval = self.get_initial_interval()

    def get_initial_interval(self):
        """
        Fetch the initial interval from the queue or use a default value.
        """
        try:
            return self.interval_queue.get(timeout=10)
        except queue.Empty:
            logger.warning("Empty interval queue. Using default interval: 15 minutes.")
            return self.min_to_sec(15)
        except Exception as e:
            logger.warning(f"Interval queue error: {e}")
            return self.min_to_sec(15)

    def handle_start_thread(self, root):
        """
        Starts the timer and interval-checking threads.
        
        @param root: GUI root object.
        """
        self.start_time = time.time()

        if self.timer_task is None:
            logger.info("Starting Timer Thread....")
            root.after(100, self.timer_thread, root)

        if self.interval_task is None:
            logger.info("Starting Interval Thread....")
            root.after(2000, self.interval_thread, root)

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
            logger.warning(f'Empty Interval Queue')
        except Exception as e:
            logger.warning(f'Error in interval thread: {e}')
        
        #call again after 2 seconds
        root.after(2000, self.interval_thread, root)

    def timer_thread(self, root):
        """
        Periodically requests data from the Microblaze at the defined interval.
        
        @param root: GUI root object.
        """
        if time.time() - self.start_time >= self.interval:
            self.start_time = time.time()

            try:
                moisture_data = self.command.get_moisture()
                if moisture_data is not None:
                    self.measure_queue.put(moisture_data)
            except Full:
                logger.warning("Measurement queue is full. Data may be lost.")
        
        #call again after 100 ms
        root.after(100, self.timer_thread, root)

    @staticmethod
    def min_to_sec(interval):
        """
        Converts minutes to seconds.

        @param interval: Time in minutes
        @return: Time in seconds
        """
        return interval * 60

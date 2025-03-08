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
import threading
import logging
from serial_class import uart

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
        self.interval_queue = interval_queue
        self.measure_queue = meas_queue
        self.timer_task = None
        self.interval_task = None
        self.interval = self.get_initial_interval()

    def get_initial_interval(self):
        """Fetch the initial interval from the queue or use a default value."""
        try:
            return self.interval_queue.get(timeout=10)
        except queue.Empty:
            logger.warning("Empty interval queue. Using default interval: 15 minutes.")
            return self.min_to_sec(15)
        except Exception as e:
            logger.warning(f"Interval queue error: {e}")
            return self.min_to_sec(15)

    def handle_start_thread(self):
        """
        Starts the timer and interval-checking threads.
        """
        self.start_time = time.time()

        if self.timer_task is None:
            self.timer_task = threading.Thread(target=self.timer_thread, daemon=True)
            self.timer_task.start()

        if self.interval_task is None:
            self.interval_task = threading.Thread(target=self.interval_thread, daemon=True)
            self.interval_task.start()

    def interval_thread(self):
        """
        Periodically checks the interval queue for updates from the GUI.
        """
        while True:
            try:
                new_interval = self.interval_queue.get(timeout=1)
                self.interval = new_interval
                logger.info(f"Interval updated: {self.interval} seconds")
            except queue.Empty:
                continue
            except Exception as e:
                logger.warning(f"Error in interval thread: {e}")

    def timer_thread(self):
        """
        Periodically requests data from the Microblaze at the defined interval.
        """
        while True:
            if time.time() - self.start_time >= self.interval:
                self.start_time = time.time()

                try:
                    moisture_data = self.request_moisture()
                    if moisture_data is not None:
                        self.measure_queue.put(moisture_data)
                except queue.Full:
                    logger.warning("Measurement queue is full. Data may be lost.")

    def toggle_water(self, water_state):
        """
        Toggles the watering state of the board.

        @param water_state: Boolean indicating whether watering should be ON (True) or OFF (False).
        """
        logger.info(f"Toggling water state: {'ON' if water_state else 'OFF'}")
        self.uart.send('W' if water_state else 'S')

    def request_moisture(self):
        """
        Sends a request for moisture data over UART.

        @note Read < 15000 ->100%; Read > 24500 ->0%

        @return: Moisture percentage (None if communication fails)
        """
        if not self.uart.uart.is_open:
            logger.error("UART connection is not open!")
            return None

        data = self.uart.send_receive(2, 'N')
        logger.info(f"Received data: {data}")

        if not data or data[0] != 'A':
            logger.warning(f"Improperly formatted data: {data}.")
            return None

        return data[1]

    @staticmethod
    def min_to_sec(interval):
        """
        Converts minutes to seconds.

        @param interval: Time in minutes
        @return: Time in seconds
        """
        return interval * 60

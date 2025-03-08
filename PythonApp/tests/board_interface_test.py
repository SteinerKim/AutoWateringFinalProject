"""
Unit Tests for board_interface.py
"""

import sys
sys.path.append("C:\\Users\\Cameron\\Documents\\ECE544\\AutoWateringFinalProject\\PythonApp")

import unittest
import time
from unittest.mock import MagicMock, patch
from new_board_interface import Interface
import queue

class TestInterface(unittest.TestCase):

    def setUp(self):
        """Set up test environment with mocked UART and queues."""
        self.mock_uart = MagicMock()
        self.interval_queue = queue.Queue()
        self.measure_queue = queue.Queue()
        self.interface = Interface(self.interval_queue, self.measure_queue, uart_obj=self.mock_uart)

    def test_initial_interval_from_queue(self):
        """Test if the class correctly initializes the interval from the queue."""
        self.interval_queue.put(30)
        interface = Interface(self.interval_queue, self.measure_queue, uart_obj=self.mock_uart)
        self.assertEqual(interface.interval, 30)

    def test_default_interval_when_queue_empty(self):
        """Test if the class correctly defaults the interval when the queue is empty."""
        interface = Interface(queue.Queue(), self.measure_queue, uart_obj=self.mock_uart)
        self.assertEqual(interface.interval, 900)  # 15 minutes in seconds

    def test_toggle_water_on(self):
        """Test that toggling the water state to ON sends the correct command."""
        self.interface.toggle_water(True)
        self.mock_uart.send.assert_called_with('W')

    def test_toggle_water_off(self):
        """Test that toggling the water state to OFF sends the correct command."""
        self.interface.toggle_water(False)
        self.mock_uart.send.assert_called_with('S')

    #@patch("time.time", side_effect=[1000, 1201])  # Simulating time progression
    #def test_timer_thread_requests_moisture(self, mock_time):
    #    Test if the timer thread calls request_moisture() at the correct interval
    #    and puts the result in the measurement queue.

    #    # Set up interface state
    #    self.interface.start_time = 1000
    #    self.interface.interval = 200
    #    self.interface.request_moisture = MagicMock(return_value=42)

    #    # Override the timer_thread to break after one iteration
    #    def single_iteration_timer_thread():
    #        if time.time() - self.interface.start_time >= self.interface.interval:
    #            self.interface.start_time = time.time()
    #            moisture_data = self.interface.request_moisture()
    #            if moisture_data is not None:
    #                self.measure_queue.put(moisture_data)

    #    with patch.object(self.interface, "timer_thread", single_iteration_timer_thread):
    #        self.interface.timer_thread()  # Call the modified function

    #    # Assertions
    #    self.interface.request_moisture.assert_called_once()
    #    self.assertFalse(self.measure_queue.empty())
    #    self.assertEqual(self.measure_queue.get(), 42)
    
    def test_request_moisture_success(self):
        """Test that request_moisture correctly returns moisture percentage."""
        self.mock_uart.uart.is_open = True
        self.mock_uart.send_receive.return_value = ['A', 75]

        result = self.interface.request_moisture()
        self.assertEqual(result, 75)

    def test_request_moisture_invalid_response(self):
        """Test that request_moisture handles improperly formatted responses."""
        self.mock_uart.uart.is_open = True
        self.mock_uart.send_receive.return_value = ['X', 75]

        result = self.interface.request_moisture()
        self.assertIsNone(result)

    def test_request_moisture_no_uart_connection(self):
        """Test that request_moisture returns None if UART is not connected."""
        self.mock_uart.uart.is_open = False
        result = self.interface.request_moisture()
        self.assertIsNone(result)

if __name__ == "__main__":
    unittest.main()

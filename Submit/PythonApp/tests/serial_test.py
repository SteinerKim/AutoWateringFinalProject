'''
Serial Test -- Unit test for serial module


@note this code was auto generated from the serial class by 
ChatGPT

'''
import sys
sys.path.append("C:\\Users\\Cameron\\Documents\\ECE544\\AutoWateringFinalProject\\PythonApp")

import unittest
from unittest.mock import MagicMock, patch
import serial
from serial_class_new import uart

class TestUART(unittest.TestCase):
    
    def setUp(self):
        """ Set up a UART instance before each test. """
        self.uart_device = uart()

    @patch('serial.Serial')
    def test_connect_success(self, mock_serial):
        """ Test successful connection to a COM port. """
        mock_serial.return_value = MagicMock()
        self.assertTrue(self.uart_device.connect("COM3"))
        self.assertEqual(self.uart_device.port, "COM3")

    @patch('serial.Serial', side_effect=serial.SerialException)
    def test_connect_failure(self, mock_serial):
        """ Test failed connection to an invalid COM port. """
        self.assertFalse(self.uart_device.connect("INVALID"))
        self.assertIsNone(self.uart_device.uart)

    def test_send_no_uart(self):
        """ Test sending data when UART is not initialized. """
        with self.assertRaises(NameError):
            self.uart_device.send('s')

    @patch('serial.Serial')
    def test_send_valid(self, mock_serial):
        """ Test sending valid commands when connected. """
        mock_serial_instance = mock_serial.return_value
        mock_serial_instance.write = MagicMock(return_value=1)
        self.uart_device.uart = mock_serial_instance
        bytes_written = self.uart_device.send('s')
        self.assertEqual(bytes_written, 1)
        mock_serial_instance.write.assert_called_with(b's')
    
    @patch('serial.Serial')
    def test_disconnect_success(self, mock_serial):
        """ Test successful disconnection when UART is active. """
        mock_serial_instance = mock_serial.return_value
        mock_serial_instance.is_open = True
        mock_serial_instance.close = MagicMock()
        self.uart_device.uart = mock_serial_instance
        self.assertTrue(self.uart_device.disconnect())
        mock_serial_instance.close.assert_called_once()
        self.assertIsNone(self.uart_device.uart)
        self.assertIsNone(self.uart_device.port)

    def test_disconnect_when_already_closed(self):
        """ Test disconnect when UART is not connected. """
        self.assertFalse(self.uart_device.disconnect())

if __name__ == '__main__':
    unittest.main()

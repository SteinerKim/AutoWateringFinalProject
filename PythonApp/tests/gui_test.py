'''
WRITTEN BY CHAT GPT
'''
import sys
sys.path.append("C:\\Users\\Cameron\\Documents\\ECE544\\AutoWateringFinalProject\\PythonApp")
import unittest
from unittest.mock import MagicMock, patch
import tkinter as tk
from gui_class import GUI

class TestGUI(unittest.TestCase):
   
    #@patch('GUI.Interface')
    def setUp(self, MockInterface):
        #self.mock_board = MockInterface.return_value
        self.gui = GUI(data_interval=60)

    def test_initial_setup(self):
        """Test that GUI initializes with correct default values."""
        self.assertEqual(self.gui.threshold, 50)
        self.assertFalse(self.gui.watering_state)
        self.assertFalse(self.gui.water_override)
        self.assertEqual(self.gui.data_interval, 60)
        self.assertEqual(self.gui.data.shape, (1, 2))

    def test_handle_send_cmd(self):
        """Test command handling sends the correct data."""
        self.gui.cmd_input.insert(0, "M123")
        self.gui.handle_send_cmd()
        self.gui.board.uart.send.assert_called_once_with('M', '123')

    def test_handle_override(self):
        """Test that override toggles the state properly."""
        initial_state = self.gui.watering_state
        self.gui.handle_override()
        self.assertNotEqual(initial_state, self.gui.watering_state)
        self.gui.board.toggle_water.assert_called_with(self.gui.watering_state)

    def test_handle_interval_valid(self):
        """Test interval handling with valid input."""
        self.gui.time_interval.insert(0, '5')
        self.gui.handle_interval()
        self.assertEqual(self.gui.data_interval, 300)
        self.assertFalse(self.gui.interval_queue.empty())
        self.assertEqual(self.gui.interval_queue.get(), 300)

    @patch('logging.warning')
    def test_handle_interval_invalid(self, mock_warning):
        """Test interval handling with invalid input."""
        self.gui.time_interval.insert(0, 'abc')
        self.gui.handle_interval()
        mock_warning.assert_called_with("Invalid interval input. Please enter a number.")

    @patch('time.time', return_value=1000)
    def test_plot_update_thread(self, mock_time):
        """Test that plot updates properly with new data."""
        self.gui.meas_queue.put(42)
        self.gui.plot_update_thread()
        self.assertEqual(self.gui.data[-1, 1], 42)
        self.gui.board.toggle_water.assert_called()

if __name__ == "__main__":
    unittest.main()

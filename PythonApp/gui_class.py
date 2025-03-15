"""
GUI Class

@author
    Cameron Castillo
    Kim Steiner

@brief
    A Python GUI for the ECE544 final project, which interfaces with the watering system.
    The GUI allows users to:
    
    1. Set a water percentage threshold.
    2. View moisture data graphically over time.
    3. Toggle the watering system on and off.

    Moisture values are displayed as percentages, with real-time updates.

@note
    The GUI is built using Tkinter and interfaces with the board via the Interface class.
"""

import tkinter as tk
from tkinter import ttk
import matplotlib.pyplot as plt
import numpy as np
import time as t
import logging

from matplotlib.backends.backend_tkagg import FigureCanvasTkAgg
from queue import Queue
from board_interface import Interface

# Configure logging
logging.basicConfig(level=logging.INFO, format="%(asctime)s - %(levelname)s - %(message)s")


class GUI:
    """
    @brief
    GUI class for the watering system.

    Handles serial communication, graphical updates, and user interactions.
    """

    def __init__(self, data_interval, passed_points=None):
        """
        @brief
        Initializes the GUI and sets up serial communication.

        @param data_interval The interval in seconds between data points.
        @param passed_points A list of tuples representing historical data (optional).
        """
        self.root = tk.Tk()
        self.root.title("Microblaze Watering System")
        self.root.geometry("600x600")

        # Initialize data
        if passed_points:
            logging.warning("Passed point functionality is not currently supported. Starting blank data.")
            self.data = np.zeros((1, 2))
        else:
            self.data = np.zeros((1, 2))

        # GUI variables
        self.threshold = 50  # Default threshold at 50%
        self.watering_state = False
        self.water_override = False
        self.data_interval = data_interval

        # Queues for inter-thread communication
        self.interval_queue = Queue()
        self.meas_queue = Queue()

        # Create board interface
        self.board = Interface(self.interval_queue, self.meas_queue)

        # Start time tracking
        self.start_time = t.time()

        # Start GUI
        self.start_gui()

        # Disconnect UART when done
        self.board.uart.disconnect()

    def start_gui(self):
        """
        @brief
        Initializes and starts the Tkinter GUI.
        """
        self.gui_layout()
        self.root.after(1000, self.plot_update_thread)
        self.root.mainloop()
    
    def gui_layout(self):
        """
        @brief
        Defines the GUI layout and creates widgets.
        """
        # Configure the main layout with grid
        self.root.grid_rowconfigure(0, weight=1)
        self.root.grid_columnconfigure(0, weight=1)

        # Create plot frame and add it to the left
        self.plot_frame = ttk.Frame(self.root)
        self.plot_frame.grid(row=0, column=0, rowspan=5, sticky='nsew', padx=10, pady=10)

        # Create plot
        fig = self.plot_window()
        self.canvas = FigureCanvasTkAgg(fig, master=self.plot_frame)
        self.canvas.draw()
        self.canvas.get_tk_widget().grid(row=0, column=0, sticky='nsew')

        # Command input and button
        self.cmd_input = tk.Entry(self.root)
        self.cmd_input.grid(row=0, column=2, padx=10, pady=10)

        self.cmd_button = tk.Button(self.root, text="Send Cmd", command=self.handle_send_cmd)
        self.cmd_button.grid(row=0, column=3, padx=10, pady=10)

        # Water override button
        self.override_button = tk.Button(self.root, text="Force Toggle", command=self.handle_override)
        self.override_button.grid(row=1, column=3, padx=10, pady=10)

        # Start button
        self.start_button = tk.Button(self.root, text="Start", bg="green", command=self.board.handle_start_thread)
        self.start_button.grid(row=4, column=3, padx=10, pady=10)

        # Interval input
        tk.Label(self.root, text="Measurement Interval (min):").grid(row=2, column=2, padx=10, pady=10)

        self.time_interval = tk.Entry(self.root)
        self.time_interval.grid(row=2, column=3, padx=10, pady=10)

        self.interval_check = tk.Button(self.root, text="Update", command=self.handle_interval)
        self.interval_check.grid(row=3, column=3, padx=10, pady=10)

        # Threshold slider
        self.threshold_slider = tk.Scale(self.root, from_=0, to=100, orient="vertical", label="Threshold")
        self.threshold_slider.set(self.threshold)
        self.threshold_slider.grid(row=0, column=1, padx=10, pady=10)

        # Temperature display
        tk.Label(self.root, text="Temperature (C):").grid(row=5, column=2, padx=10, pady=10, sticky='e')
        self.temp_display = tk.Entry(self.root, state='normal', width=10)
        self.temp_display.grid(row=5, column=3, padx=10, pady=10, sticky='w')
        self.temp_display.insert(0, "--")
        self.temp_display.config(state='readonly')

        # Humidity display
        tk.Label(self.root, text="Humidity (%):").grid(row=6, column=2, padx=10, pady=10, sticky='e')
        self.humidity_display = tk.Entry(self.root, state='normal', width=10)
        self.humidity_display.grid(row=6, column=3, padx=10, pady=10, sticky='w')
        self.humidity_display.insert(0, "--")
        self.humidity_display.config(state='readonly')

    def plot_window(self):
        """
        @brief
        Creates the moisture graph.

        @return The matplotlib figure object.
        """
        fig, ax = plt.subplots(facecolor="black")

        # Extract data
        t_values = self.data[:, 0]
        water_values = self.data[:, 1]

        ax.plot(t_values, water_values, "wo", markersize=4, label="Data Points")
        ax.axhline(y=self.threshold, color="w", linestyle="--", label="Threshold")
        ax.set_facecolor("black")
        ax.set_xlabel("Time [Minutes]", color="white")
        ax.set_ylabel("Moisture Percentage", color="white")
        ax.legend()

        return fig

    def handle_send_cmd(self):
        """
        @brief
        Handles command button presses and sends data over UART.
        """
        cmd = self.cmd_input.get()
        if cmd:
            self.board.uart.send(cmd[0], data=cmd[1:] if len(cmd) > 1 else None)

    def handle_override(self):
        """
        @brief
        Toggles the watering system manually.
        """
        self.water_override = not self.water_override
        self.watering_state = self.water_override
        self.board.toggle_water(self.watering_state)

    def handle_interval(self):
        """
        @brief
        Updates the measurement interval based on user input.
        """
        try:
            self.data_interval = int(self.time_interval.get()) * 60  # Convert to seconds
            self.interval_queue.put(self.data_interval)
        except ValueError:
            logging.warning("Invalid interval input. Please enter a number.")

    def plot_update_thread(self):
        """
        @brief
        Updates the plot periodically with new data from the measurement queue.
        """
        if not self.meas_queue.empty():
            data = self.meas_queue.get()
            time_elapsed = t.time() - self.start_time
            self.data = np.vstack((self.data, [time_elapsed, data]))

            fig = self.plot_window()
            self.canvas.figure = fig
            self.canvas.draw()

        # Check if moisture exceeds threshold
        last_water_state = self.watering_state
        if self.data[-1, 1] >= self.threshold and not self.water_override:
            self.watering_state = False
        elif self.data[-1, 1] < self.threshold and not self.water_override:
            self.watering_state = True

        #write if different
        if self.watering_state != last_water_state:
            self.board.toggle_water(self.watering_state)
        
        #Perform task again....
        self.root.after(1000, self.plot_update_thread)

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

        # Initialize data
        if passed_points:
            logging.warning("Passed point functionality is not currently supported. Starting blank data.")
            self.data = np.zeros((2, 1, 2))
        else:
            self.data = np.zeros((2, 1, 2))

        logging.info(f'data matrix shape: {self.data.shape}')

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
        if self.board.uart.is_connected():
            self.board.uart.disconnect()

        #destroy root
        self.root.destroy()

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
        # Set initial window size
        self.root.geometry("1000x500")

        # Configure the main layout with grid
        self.root.grid_rowconfigure(0, weight=1)
        self.root.grid_columnconfigure(0, weight=1)
        for i in range(9):
            self.root.grid_rowconfigure(i, weight=1)
        for i in range(4):
            self.root.grid_columnconfigure(i, weight=1)

        # Create plot frame and add it to the left
        self.plot_frame = ttk.Frame(self.root)
        self.plot_frame.grid(row=0, column=0, rowspan=9, sticky='nsew', padx=10, pady=10)

        # UART Connection label, input, and button
        tk.Label(self.root, text="UART Connection:").grid(row=0, column=2, columnspan=2, padx=10, pady=0)
        self.uart_input = tk.Entry(self.root)
        self.uart_input.grid(row=1, column=2, padx=10, pady=5)
        self.uart_button = tk.Button(self.root, text="Connect", \
                command=(lambda: self.board.uart.connect(self.uart_input.get())))
        self.uart_button.grid(row=1, column=3, padx=10, pady=5)

        # Command input and button
        self.cmd_input = tk.Entry(self.root)
        self.cmd_input.grid(row=2, column=2, padx=10, pady=2)

        self.cmd_button = tk.Button(self.root, text="Send Cmd", command=self.handle_send_cmd)
        self.cmd_button.grid(row=2, column=3, padx=10, pady=2)

        # Water override button 1
        self.override_button = tk.Button(self.root, text="Force Toggle 1", \
                command=(lambda: self.handle_override(1)))
        self.override_button.grid(row=3, column=3, padx=10, pady=2)

        # Water override button 2
        self.override_button = tk.Button(self.root, text="Force Toggle 2", \
                command=(lambda: self.handle_override(2)))
        self.override_button.grid(row=4, column=3, padx=10, pady=2)

        # Start button
        self.start_button = tk.Button(self.root, text="Start", bg="green", \
            command=lambda: self.board.handle_start_thread(self.root))
        self.start_button.grid(row=7, column=3, padx=10, pady=2)

        # Interval input
        tk.Label(self.root, text="Measurement Interval (min):").grid(row=4, column=2, padx=10, pady=2)

        self.time_interval = tk.Entry(self.root)
        self.time_interval.grid(row=5, column=3, padx=10, pady=2)

        self.interval_check = tk.Button(self.root, text="Update", command=self.handle_interval)
        self.interval_check.grid(row=6, column=3, padx=10, pady=2)

        # Threshold slider
        self.threshold_slider = tk.Scale(self.root, from_=100, to=0, orient="vertical")
        self.threshold_slider.set(self.threshold)
        self.threshold_slider.grid(row=1, column=1, rowspan=7, sticky='ns', padx=10, pady=2)

        # Temperature display
        tk.Label(self.root, text="Temperature (C):").grid(row=8, column=2, padx=10, pady=5, sticky='e')
        self.temp_display = tk.Entry(self.root, state='normal', width=10)
        self.temp_display.grid(row=8, column=3, padx=10, pady=2, sticky='w')
        self.temp_display.insert(0, "--")
        self.temp_display.config(state='readonly')

        # Humidity display
        tk.Label(self.root, text="Humidity (%):").grid(row=9, column=2, padx=10, pady=2, sticky='e')
        self.humidity_display = tk.Entry(self.root, state='normal', width=10)
        self.humidity_display.grid(row=9, column=3, padx=10, pady=5, sticky='w')
        self.humidity_display.insert(0, "--")
        self.humidity_display.config(state='readonly')   
        
        # Create plot
        fig = self.plot_window()
        self.canvas = FigureCanvasTkAgg(fig, master=self.plot_frame)
        self.canvas.draw()
        self.canvas.get_tk_widget().grid(row=0, column=0, sticky='nsew')

    def plot_window(self):
        """
        @brief
        Creates the moisture graph.

        @return The matplotlib figure object.
        """
        fig, ax = plt.subplots(facecolor="black")

        # Extract data
        t_values = self.data[:, :, 0]
        water_values = self.data[:, :, 1]

        ax.plot(t_values[0], water_values[0], "wo", markersize=4, label="Sensor 1")
        ax.plot(t_values[1], water_values[1], "ro", markersize=4, label="Sensor 2")
        ax.axhline(y=self.threshold_slider.get(), color="w", linestyle="--", label="Threshold")
        ax.set_facecolor("black")
        ax.set_xlabel("Time [Minutes]", color="white")
        ax.set_ylabel("Moisture Percentage", color="white")
        ax.legend()

        #determine max plot xdim
        x_ticks = self.determine_xdim(t_values)

        ax.tick_params(axis='x', colors='white')
        ax.tick_params(axis='y', colors='white')
        ax.spines['bottom'].set_color('white')
        ax.spines['top'].set_color('white') 
        ax.spines['right'].set_color('white')
        ax.spines['left'].set_color('white')

        #create plot dimensions
        if (x_ticks[-1] < 60):
            ax.set_xticks([10*i for i in range(7)])
            ax.set_xlim(-2,60)
        else:
            ax.set_xticks(x_ticks)
            ax.set_xlim(-2,x_ticks[-1])
        ax.set_ylim(-2,110)
        ax.set_yticks([0, 25, 50, 75, 100], 
                   ['0%', '25%', '50%', '75%', '100%'])

        return fig


    def handle_start(self):
        """
        @brief
        Handles start button press. Passes to board interface handle function.
        """
        self.board.handle_start_thread(self.root)

    def handle_send_cmd(self):
        """
        @brief
        Handles command button presses and sends data over UART.
        """
        cmd = self.cmd_input.get()
        self.board.command.raw_command(cmd)

    def handle_override(self, sensor):
        """
        @brief
        Toggles the watering system manually.

        @param sensor: sensor number, either 1 or 2
        """
        self.water_override = not self.water_override
        self.watering_state = self.water_override
        self.board.command.toggle_water(self.watering_state, sensor)

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
            breakpoint()
            data, sensor = self.meas_queue.get()
            time_elapsed = (t.time() - self.start_time)/60
            self.data[sensor-1] = \
                    np.vstack((self.data[sensor-1], [time_elapsed, data]))

        plt.close()
        fig = self.plot_window()
        self.canvas.figure = fig
        self.canvas.draw()

        # Adding temperature and humidity check
        temp_data, humid_data = self.board.command.get_temperature()
        if temp_data != None and humid_data != None:
            self.update_textbox(self.humidity_display, humid_data)
            self.update_textbox(self.temp_display, temp_data)

        #check sensor threshold
        self.sensor_threshold_toggle(1)
        self.sensor_threshold_toggle(2)
        
        #Perform task again....
        self.root.after(1000, self.plot_update_thread)
    
    def sensor_threshold_toggle(self, sensor):
        """
        @brief return true of false for the watering state
        """
        # Check if moisture exceeds threshold
        last_water_state = self.watering_state
        if self.data[sensor-1, -1, 1] >= self.threshold and not self.water_override:
            self.watering_state = False
        elif self.data[sensor-1, -1, 1] < self.threshold and not self.water_override:
            self.watering_state = True

        #write if different
        if self.watering_state != last_water_state:
            self.board.command.toggle_water(self.watering_state, sensor)

    @staticmethod
    def determine_xdim(t):
        '''
        @brief

        Use this function to create a list of tick values
        for plotting function. Goes from 0 to the largest
        multiple of 10 in the x_ticks.
        
        @param t numpy array of time values

        @return list of x_ticks

        '''
        #get multiple number
        ten_mult = int(t[-1]//10)
        remainder = int(t[-1]%10)
        
        x_ticks = [10*i for i in range(ten_mult+1)]

        #check whether remainder is > 0
        if(remainder > 0):
            x_ticks.append(x_ticks[-1]+10)

        return x_ticks

    @staticmethod
    def update_textbox(textbox, new_value):
        """
        @brief

        Update read-only textbox by switching it to a normal
        box before updating.

        @param textbox entry widget to be updated
        @param new_value value for textbox
        """
        textbox.config(state='normal') # Enable editing
        textbox.delete(0, tk.END)  # Delete current content
        textbox.insert(0, new_value) # Insert new content
        textbox.config(state='readonly') # Disable editing 

'''
Serial Class

@author Cameron Castillo

@brief

This file provides functionality for a tkinter GUI controlling 
the UART interface to a watering system. It performs two 
functions:

    1: Initiate watering by transmitting 'W'
    2: Stop watering by transmitting 'S'
    3: Request moisture percentage data by transmitting 'N'
    4: Succesfully received data will be acknowledged with 'A' + [data]

This is a test platform and may be expanded in the future to include 
more control options for the system.

@note See gui_class.py to load the GUI made with tkinter

@note Some code was edited and implemented by ChatGPT

'''
import serial as ser
from serial import SerialException
import logging

# Configure logging
logging.basicConfig(level=logging.INFO, format='%(asctime)s - %(levelname)s - %(message)s')

class uart:
    """
    @brief 

    This class acts as an interface to the watering system's 
    microcontroller using the serial port. It provides low-level 
    write functionality for the GUI.
    """

    def __init__(self, baud=115200, timeout=0.5):
        """
        @brief

        Initializes the UART interface.

        @param baud: Baud rate for the microcontroller (default 115200)
        @param timeout: Timeout between transmissions (default 0.5s)

        @note Do not create an instance of the Serial object in the init
        function, as the COM port is not initialized in the GUI.
        """
        self.baud = baud
        self.timeout = timeout
        self.uart = None
        self.port = None

        # Command dictionary for system control
        self.cmd_dict = {
                'STATE_OVERRIDE': 'o',
                }
    
    def send(self, cmd, data=None):
        """
        @brief 

        Transmits data over UART depending on the command received.
        
        @param cmd: Command argument, either 's' = start watering or
                    'a' = send control data.
        @param data: Optional data to transmit (max size 1024 bytes).
        
        @return Number of bytes written via UART.
        """
        if self.uart is None:
            logging.error("Invalid call: no UART object defined")
            raise NameError("UART not initialized")
            return None

        if type(data) != str and data != None:
            data = chr(data)

        uart_tx = bytes((cmd + data + '\r'), 'utf-8') \
                if data else bytes((cmd + '\r'), 'utf-8')
        return self.uart.write(uart_tx)

    def receive(self, n_char):
        """
        @brief

        Receieve n_char characters over uart.

        @param n_char number of expected characters

        @return n_char received characters
        """
        if self.uart is None:
            logging.error("Invalid call: no UART object defined")
            raise NameError("UART not initialized")
        
        try:
            data_char = self.uart.read(n_char)
        except SerialException as e:
            logging.error(f'Read Error: {e}')
        finally:
            return data_char

    def send_receive(self, n_char, cmd, data=None):
        """
        @brief 

        Send command and wait for response back from Serial device

        @param n_char number of characters expected back
        @param cmd command data sent to device
        @param data data sent with command. Default None.

        @return data received from uart
        """
        #don't need to check for uart, already done in send and receive
        self.send(cmd, data)
        return self.receive(n_char)

    def connect(self, com):
        """
        @brief

        Establishes a connection to the specified UART port.

        @param com: COM port to be connected to.
        
        @return Boolean: True for successful connection, False otherwise.
        """
        logging.info(f'Attempting to connect to {com}....')
        try:
            self.uart = ser.Serial(com, baudrate=self.baud, timeout=self.timeout)
            self.port = com
            logging.info(f'Successfully connected to {com}')
            return True
        except Exception as e:
            logging.error(f'{e}. {com} is an invalid COM port. Check connections and try again.')
            return False
    
    def disconnect(self):
        """
        Disconnect

        @brief

        Closes the UART connection if it is active.

        @return Boolean: True if the port was successfully closed, False otherwise.

        @note this function was written by ChatGPT

        """
        if self.uart is not None and self.uart.is_open:
            self.uart.close()
            logging.info("UART connection closed successfully.")
            self.uart = None
            self.port = None
            return True
        logging.warning("UART connection is already closed or was never opened.")
        return False

    def is_connected(self):
        """
        @brief

        Determine if the uart has a good connection or not.

        @returns boolean: state of connection.
        """
        if self.uart != None:
            return self.uart.is_open
        else:
            return False


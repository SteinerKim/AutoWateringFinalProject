"""
Uart Commands

@author
    -Cameron Castillo
    -Kim Steiner

@brief

This class represents the high-level driver for the UART back to the 
FPGA. The commands and characters to warrant some action from the 
device are all interpreted here.

@note this file was created with the assistance of ChatGPT

"""
import logging

# Configure logging
logging.basicConfig(level=logging.INFO, format="%(asctime)s - %(levelname)s - %(message)s")
logger = logging.getLogger(__name__)

class uart_commands:
    def __init__(self, uart):
        """
        @brief

        Initialize structures within class.

        @param uart: instance of the uart (from board_interface)
        
        """
        self.uart = uart

    def get_temperature(self):
        """
        Sends a request for humidity & temperature data over UART.

        @return: temperature & humidity percentage (None if communication fails)
        """
        if not self.uart.is_connected():
            logger.error("UART connection is not open!")
            return None, None

        data = self.uart.send_receive(3, 'T')
        logger.info(f"Received Temp/Humidity Data: {data}")

        if (not data):
            return None, None
        if chr(data[0]) != 'A':
            logger.warning(f'Improperly formatted data: {data}.')
            return None, None
        if chr(data[0]) == 'E':
            logger.warning(f'Received error char from board....')

        temperature = data[2]
        humidity = data[1]

        return temperature, humidity

    def toggle_water(self, water_state, sensor):
        """
        Toggles the watering state of the board.

        @param water_state: Boolean indicating whether watering should be ON (True) or OFF (False).
        @param sensor: sensor number; either 1 or 2.
        """
        logger.info(f"Toggling water state: {'ON' if water_state else 'OFF'}")
        if sensor == 1 or sensor == 2:
            logger.warning(f"Invalid Sensor Number: {sensor}")
        if self.uart.is_connected():
            buf = ('W' if water_state else 'S') + f'{sensor}'
            self.uart.send(buf)
        else:
            logger.warning(f"Board UART uninitizalized. Enter COM port into GUI")

    def raw_command(self, cmd):
        """
        Send command based on raw input

        @param cmd: command char

        @return recieved bytes (if any)
        """
        try:
            assert cmd != None, "raw_command: No Valid Command!"
        except AssertionError as e:
            logger.error('No valid command input!')
            return None

        recv = self.uart.send_recv(cmd[0], data=cmd[1:] if len(cmd) > 1 else None)
        
        if chr(recv[0]) == 'A':
            logger.info(f'Successful transfer of {cmd}, received {recv}')
        if chr(recv[0]) == 'E':
            logger.warning(f'Bad data transfer of {cmd}, received {recv}')
            return None

        return recv
            
    def get_moisture(self, sensor):
        """
        @brief
        Sends a request for moisture data over UART.

        @param sensor number for desired sensor measurement

        @return: Moisture percentage (None if communication fails)
        """
        if not self.uart.is_connected():
            logger.error("UART connection is not open!")
            return None

        data = self.uart.send_receive(3, 'N', data=sensor)
        logger.info(f"Received Moisture Data: {data} from sensor {sensor}")
        
        #override for testing purposes
        return 40

        if not data:
            logger.warning(f'No data received!')
            return None
        if chr(data[0]) != 'A':
            logger.warning(f'Improperly formatted data: {data}')
            return None
        if chr(data[0]) == 'E':
            logger.warning(f'Error in board output! received: {data}')

        #turn bytes into python int object
        read_adc = int.from_bytes(data[1:2], byteorder='big')
        return self.get_moisture_percent(read_adc)        
    
    @staticmethod
    def get_moisture_percent(sensor_data):
        """
        @brief
        Get a moisture percentage from the raw sensor data

        @note Read < 15000 ->100%; Read > 24500 ->0%

        @note equation for output based on point-slope form

        @return percent value for moisture
        """
        min_adc = 15000
        max_adc = 24500 

        # Ensure the value stays within bounds
        sensor_data = max(min_adc, min(max_adc, sensor_data))
        
        return int((-100/(24500-15000))*sensor_data + 257.895 )

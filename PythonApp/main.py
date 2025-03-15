'''
main

@author Cameron Castillo
@author Kim Steiner

@brief

This file is used to provide the main function
for the python app used to write back to the automatic
watering system. 

This class will use the thread library to create two 
separate threads for both the uart and gui tasks. The 
communication thread will periodically send requests
back to the Microblaze to get moisture information.
The gui will perform its functions in a separate thread 
before running

@note see class files for in-depth explanation
of functionality.

'''
def main():
    """
    Main function to simulate the GUI and class interactions without a physical COM port.
    """
    from gui_class import GUI
    from board_interface import Interface
    from unittest.mock import MagicMock, patch
    from board_interface import Interface
    
    with patch('board_interface.uart') as MockSerial:
        MockSerial.return_value.read.return_value = b'A42'
        MockSerial.return_value.write.return_value = None
        
        # Instantiate the GUI
        gui = GUI(data_interval=60)


if __name__ == "__main__":
    main()



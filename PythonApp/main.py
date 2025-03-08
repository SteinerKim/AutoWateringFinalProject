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
from gui_class import gui
from serial_class import uart



if __name__ == '__main__':
    breakpoint()
    main_gui = gui()



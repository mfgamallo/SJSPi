#!/usr/bin/env python3
"""
Reads joystick and manages GPIO pins to send old style joystick signals (Sinclair or Atari)

Currently uses just one Sinclair joystick
"""
import getopt
import sys
import traceback

import joy

def main(argv):
    try:
        opts, args = getopt.getopt(argv, "m", [])
    except getopt.GetoptError:
        print ('usage: main.py [-m]')
        sys.exit(2)

    mock_gpio = False
    for opt, arg in opts:
      if opt == '-m':
          mock_gpio = True
          
    print("Spectrum Joystick start")

    if mock_gpio:
        from gpio_mock import GpioMock
        gpio = GpioMock()
    else:
        from gpio import Gpio
        gpio = Gpio()

    while True:
        spect_joy = joy.get_joystick(gpio)
        try:
            spect_joy.loop()
        except Exception as e:
            exc_type, exc_value, exc_traceback = sys.exc_info()            
            print("Oops - error: ", e)
            traceback.print_exception(exc_type, exc_value, exc_traceback)

    print("Spectrum Joystick end")

if __name__ == "__main__":
    main(sys.argv[1:])

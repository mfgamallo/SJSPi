# SJSPi
Send signals to a Sinclair joystick port from a Raspberry Pi.

The Spectrum +2A and +3 come with two special joystick ports. They look like Atari, but aren't.

This projects presents a board and some code so any gamepad usable in a Raspberry Pi can be used to drive those ports.

Make it work:

$ cd python
$ python3 -m venv ./venv
$ pip3 install evdev
$ pip3 install rpi.gpio

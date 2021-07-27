"""
Concentrates all interaction with rhe Raspberry PI GPIO interface
"""
from RPi import GPIO
from joy import State

class Gpio:
    
    PI_UP = 13
    PI_DOWN = 15
    PI_LEFT = 31
    PI_RIGHT = 37
    PI_FIRE = 29

    def __init__(self):
        self.state = State()

        GPIO.setmode(GPIO.BOARD)

        GPIO.setup(PI_UP, GPIO.OUT)
        GPIO.setup(PI_DOWN, GPIO.OUT)
        GPIO.setup(PI_LEFT, GPIO.OUT)
        GPIO.setup(PI_RIGHT, GPIO.OUT)
        GPIO.setup(PI_FIRE, GPIO.OUT)

        GPIO.output(PI_UP, GPIO.LOW)
        GPIO.output(PI_DOWN, GPIO.LOW)
        GPIO.output(PI_LEFT, GPIO.LOW)
        GPIO.output(PI_RIGHT, GPIO.LOW)
        GPIO.output(PI_FIRE, GPIO.LOW)

    def update(self, new_state):
        if self.state.up != new_state.up:
            if new_state.up:
                GPIO.output(PI_UP, GPIO.HIGH)
            else:
                GPIO.output(PI_UP, GPIO.LOW)
        if self.state.down != new_state.down:
            if new_state.down:
                GPIO.output(PI_DOWN, GPIO.HIGH)
            else:
                GPIO.output(PI_DOWN, GPIO.LOW)
        if self.state.left != new_state.left:
            if new_state.left:
                GPIO.output(PI_LEFT, GPIO.HIGH)
            else:
                GPIO.output(PI_LEFT, GPIO.LOW)
        if self.state.right != new_state.right:
            if new_state.right:
                GPIO.output(PI_RIGHT, GPIO.HIGH)
            else:
                GPIO.output(PI_RIGHT, GPIO.LOW)
        if self.state.fire != new_state.fire:
            if new_state.fire:
                GPIO.output(PI_FIRE, GPIO.HIGH)
            else:
                GPIO.output(PI_FIRE, GPIO.LOW)
        self.state = new_state

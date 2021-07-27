"""
gpio mock
"""
from joy import State

class GpioMock:
    def __init__(self):
        self.state = State()

    def update(self, new_state):
        self.state = new_state
        print("UP:", self.state.up, "DOWN:", self.state.down, "LEFT:", self.state.left, "RIGHT:", self.state.right, "FIRE:", self.state.fire)

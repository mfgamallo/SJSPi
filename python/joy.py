"""
Stores the state of a joystick
"""
import copy
import evdev
import time

import axis
import button

class State:
    def __init__(self):
        self.up = False
        self.down = False
        self.left = False
        self.right = False
        self.fire = False

    def equals(self, other):
        return self.up == other.up and self.down == other.down and self.left == other.left and self.right == other.right and self.fire == other.fire

def get_joystick(gpio):
    new_gamepads = []
    while(len(new_gamepads) == 0):
        print("Looking for gamepads...")
        time.sleep(1.0)
        new_gamepads = [evdev.InputDevice(path) for path in evdev.list_devices()]

    gamepad = new_gamepads[0]
    print("Found gamepad:")
    print(gamepad.path, gamepad.name, gamepad.phys)
    print(gamepad.capabilities(verbose=True))
    print()

    axises = gamepad.capabilities()[evdev.ecodes.EV_ABS]
    buttons = gamepad.capabilities()[evdev.ecodes.EV_KEY]

    x_axises = axis.get_x(axises, buttons)
    print("X axises:", x_axises)
    y_axises = axis.get_y(axises, buttons)
    print("Y axises:", y_axises)

    fire_buttons = button.get_fire(buttons)
    print("Fire buttons: " + str(fire_buttons))
    jump_buttons = button.get_jump(buttons)
    print("Jump buttons: " + str(jump_buttons))

    spect_joy = SpectrumJoystick(gamepad, x_axises, y_axises, fire_buttons, jump_buttons, gpio)
    return spect_joy

class SpectrumJoystick:
    def __init__(self, gamepad, x_axises, y_axises, fire_buttons, jump_buttons, gpio):
        self.gamepad = gamepad
        self.x_axises = x_axises
        self.y_axises = y_axises
        self.fire_buttons = fire_buttons
        self.jump_buttons = jump_buttons

        self.x_axis_states = {}
        for a in self.x_axises:
            self.x_axis_states[a.id] = axis.CENTRE
        self.y_axis_states = {}
        for a in self.y_axises:
            self.y_axis_states[a.id] = axis.CENTRE
        self.fire_states = {}
        for button in self.fire_buttons.buttons:
            self.fire_states[button] = evdev.events.KeyEvent.key_up
        self.jump_states = {}
        for button in self.jump_buttons.buttons:
            self.jump_states[button] = evdev.events.KeyEvent.key_up

        self.gpio = gpio

    def loop(self):
        for event in self.gamepad.read_loop():
            new_state = self.__process_event(event)
            if (not new_state.equals(self.gpio.state)):
                self.gpio.update(new_state)

    def __process_event(self, raw_event):
        event = evdev.categorize(raw_event)
        state = copy.deepcopy(self.gpio.state)

        if any(filter(lambda a: a.is_event(event), self.x_axises)):
            for a in filter(lambda a: a.is_event(event), self.x_axises):
                self.x_axis_states[a.id] = a.value(event)
        elif any(filter(lambda a: a.is_event(event), self.y_axises)):
            for a in filter(lambda a: a.is_event(event), self.y_axises):
                self.y_axis_states[a.id] = a.value(event)
        elif (isinstance(event, evdev.events.KeyEvent)):
            if (event.scancode in self.fire_buttons.buttons):
                if (event.keystate == event.key_down):
                    self.fire_states[event.scancode] = event.key_down
                elif (event.keystate == event.key_up):
                    self.fire_states[event.scancode] = event.key_up
            elif (event.scancode in self.jump_buttons.buttons):
                if (event.keystate == event.key_down):
                    self.jump_states[event.scancode] = event.key_down
                elif (event.keystate == event.key_up):
                    self.jump_states[event.scancode] = event.key_up

        if any(filter(lambda s: s == axis.MIN, self.x_axis_states.values())):
            state.left = True
        else:
            state.left = False
        if any(filter(lambda s: s == axis.MAX, self.x_axis_states.values())):
            state.right = True
        else:
            state.right = False

        # The UP state depends not only on the state of the Y axis, but also on the state of any of the JUMP buttons
        if any(filter(lambda s: s == axis.MAX, self.y_axis_states.values())):
            state.down = True
        else:
            state.down = False

        # To decide about the state of UP we need to check both the state of the Y axis and the state of the JUMP buttons
        if (any(s == evdev.events.KeyEvent.key_down for s in self.jump_states.values()) or
            any(filter(lambda s: s == axis.MIN, self.y_axis_states.values()))):
            state.up = True
        else:
            state.up = False
            
        if any(s == evdev.events.KeyEvent.key_down for s in self.fire_states.values()):
            state.fire = True
        else:
            state.fire = False
                
        return state

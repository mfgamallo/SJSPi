"""
Utils for axises
"""
import evdev
import math
import re

import button

MIN = "MIN"
CENTRE = "CENTRE"
MAX = "MAX"

BUTTON_UP = "^.*DPAD.*UP.*$"
BUTTON_DOWN = "^.*DPAD.*DOWN.*$"
BUTTON_LEFT = "^.*DPAD.*LEFT.*$"
BUTTON_RIGHT = "^.*DPAD.*RIGHT.*$"

class AxisExt:
    def is_event(self, event): pass
    def value(self, event): pass

class BtnAxisExt(AxisExt):
    def __init__(self, button_min, button_max):
        self.id = str(button_min) + str(button_max)
        self.button_min = button_min
        self.button_max = button_max
        self.button_min_state = False
        self.button_max_state = False

    def __repr__(self): return "BTNs " + str(self.id)
        
    def is_event(self, event):
        return isinstance(event, evdev.events.KeyEvent) and (event.scancode == self.button_min or event.scancode == self.button_max) and (event.keystate == event.key_up or event.keystate == event.key_down)

    def value(self, event):
        if event.scancode == self.button_min:
            if event.keystate == event.key_down:
                self.button_min_state = True
            elif event.keystate == event.key_up:
                self.button_min_state = False
        elif event.scancode == self.button_max:
            if event.keystate == event.key_down:
                self.button_max_state = True
            elif event.keystate == event.key_up:
                self.button_max_state = False
        if self.button_min_state and not self.button_max_state:
            return MIN
        elif not self.button_min_state and self.button_max_state:
            return MAX
        else:
            return CENTRE

class TrueAxisExt(AxisExt):
    def __init__(self, axis):
        self.id = axis[0]
        distance = axis[1].max - axis[1].min
        threshold = math.ceil(distance / 8)
        self.min_threshold = axis[1].min + threshold
        self.max_threshold = axis[1].max - threshold

    def __repr__(self): return "ABS " + str(self.id)

    def is_event(self, event):
        return isinstance(event, evdev.events.AbsEvent) and (event.event.type == evdev.ecodes.EV_ABS) and (event.event.code == self.id)

    def value(self, event):
        if event.event.value < self.min_threshold: return MIN
        elif event.event.value > self.max_threshold: return MAX
        return CENTRE

def get_name(a): return evdev.ecodes.ABS[a[0]]

def get_axis(axis_name, abs_name, regex_button_min, regex_button_max, axises, buttons):
    button_axis = []
    mins = list(filter(lambda b: button.name_matches(regex_button_min, b), buttons))
    maxs = list(filter(lambda b: button.name_matches(regex_button_max, b), buttons))
    if len(mins) == 1 and len(maxs) == 1:
        button_axis.append(BtnAxisExt(mins[0], maxs[0]))
    else:
        print("No buttons for", axis_name, "axis")

    potential = list(filter(lambda a: get_name(a) == abs_name, axises))
    if len(potential) == 0:
        print("Couldn't find an axis fo", axis_name)
    true_axis = list(map(lambda a: TrueAxisExt(a), potential))

    return true_axis + button_axis

def get_x(axises, buttons): return get_axis("X", "ABS_X", BUTTON_LEFT, BUTTON_RIGHT, axises, buttons)

def get_y(axises, buttons): return get_axis("Y", "ABS_Y", BUTTON_UP, BUTTON_DOWN, axises, buttons)

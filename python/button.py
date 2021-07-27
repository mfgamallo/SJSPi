"""
Utils for buttons
"""
import evdev
import re

EXCLUDE = "^.*DPAD.*(UP|DOWN|LEFT|RIGHT).*$"

class ButtonExt:
    def __init__(self, buttons):
        self.buttons = buttons

    def __repr__(self): return str(self.buttons)

def get_name(b): return evdev.ecodes.BTN[b]

def name_matches(regex, button):
    button_names = get_name(button)
    if (not isinstance(button_names, list)):
        button_names = [get_name(button)]
    return any(filter(lambda s: re.match(regex, s), button_names))

def matches_exclude(button):
    return name_matches(EXCLUDE, button)
        
def get_fire(buttons):
    relevant_buttons = list(filter(lambda b: not matches_exclude(b), buttons))
    indexed_buttons = zip(range(len(relevant_buttons)), relevant_buttons)
    return ButtonExt(list(map(lambda t: t[1], filter(lambda t: t[0] % 2 == 0, indexed_buttons))))

def get_jump(buttons):
    relevant_buttons = list(filter(lambda b: not matches_exclude(b), buttons))
    indexed_buttons = zip(range(len(relevant_buttons)), relevant_buttons)
    return ButtonExt(list(map(lambda t: t[1], filter(lambda t: t[0] % 2 == 1, indexed_buttons))))

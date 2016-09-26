#!/usr/bin/env python
# This script switches from and to apple keyboard (apple keyboard has ctrl,alt,meta layout and I want to have ctrl, meta, alt layout)

import subprocess
from gi.repository import Gio

SWITCH_ALT_WIN = 'altwin:swap_alt_win' # kxb option to switch left win and alt, have a look in /usr/share/X11/xkb/rules/base.lst

gsettings = Gio.Settings.new('org.gnome.desktop.input-sources')
current_settings = gsettings['xkb-options']


# check if the Aluminium Keyboard is connected:
keyboard_present = 'Apple, Inc. Aluminium Keyboard' in subprocess.check_output('lsusb')

current_settings = [e for e in current_settings if not e==SWITCH_ALT_WIN]
if keyboard_present:
    current_settings.append(SWITCH_ALT_WIN)

gsettings['xkb-options'] = current_settings
gsettings.apply()

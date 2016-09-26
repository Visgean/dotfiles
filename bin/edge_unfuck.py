#!/usr/bin/env python

import subprocess
from gi.repository import Gio

EDGE = 'Right|TopLeft|BottomRight' 

gsettings = Gio.Settings.new('org.compiz')
current_settings = gsettings['profiles.unity.plugins.expo.expo-edge']



gsettings['expo-edge'] = '' if current_settings == EDGE else EDGE
gsettings.apply()

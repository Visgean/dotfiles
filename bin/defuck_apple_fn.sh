#!/bin/sh

# see http://askubuntu.com/questions/622382/ubuntu-15-04-sound-keyboard-terminal-shortcut-stopped-working/624757#624757
# and  possibly apt-get remove appmenu-qt5

xmodmap -e 'keycode 191 = F13'
xmodmap -e 'keycode 192 = F14'
xmodmap -e 'keycode 193 = F15'
xmodmap -e 'keycode 194 = F16'
xmodmap -e 'keycode 195 = F17'
xmodmap -e 'keycode 196 = F18'
xmodmap -e 'keycode 197 = F19'

xkbset exp m

~/p/bin/keybindings.pl -i ~/Dropbox/bck/shortcuts.csv

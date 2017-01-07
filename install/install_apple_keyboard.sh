#!/bin/sh

echo 0 | sudo tee /sys/module/hid_apple/parameters/iso_layout
echo options hid_apple iso_layout=0 | sudo tee -a /etc/modprobe.d/hid_apple.conf
echo 2 | sudo tee /sys/module/hid_apple/parameters/fnmode
echo options hid_apple fnmode=2 | sudo tee -a /etc/modprobe.d/hid_apple.conf
echo 1 | sudo tee /sys/module/hid_apple/parameters/swap_opt_cmd
echo options hid_apple swap_opt_cmd=1 | sudo tee -a /etc/modprobe.d/hid_apple.conf

sudo update-initramfs -u -k all


xmodmap -e 'keycode 191 = F13'
xmodmap -e 'keycode 192 = F14'
xmodmap -e 'keycode 193 = F15'
xmodmap -e 'keycode 194 = F16'
xmodmap -e 'keycode 195 = F17'
xmodmap -e 'keycode 196 = F18'
xmodmap -e 'keycode 197 = F19'

xkbset exp m

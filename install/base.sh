#!/bin/sh


sudo apt update
sudo apt upgrade
sudo apt install -y \
	tilda \
	xclip \
	redshift \
	fortune-mod \
	vlc \
	lm-sensors \
	smbios-utils \
	cpufrequtils \
	pm-utils \
	dconf-tools \
	exfat-fuse \
	exfat-utils



sudo apt clean


pip3 install --user virtualenvwrapper
pip3 install --user ipython

sudo snap install sublime-text --classic


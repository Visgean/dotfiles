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
	cpufrequtils


sudo apt clean

# install cli tools
bash cli_only.sh
pip install --user virtualenvwrapper

gsettings set org.gnome.desktop.interface enable-animations false
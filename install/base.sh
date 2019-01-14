sudo apt update
sudo apt upgrade
sudo apt install -y \
	tilda \
	xclip \
	redshift \
	fortune-mod \
	vlc \
	lm-sensors \

sudo apt clean

# install cli tools
bash cli_only.sh
pip install --user virtualenvwrapper

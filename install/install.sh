sudo apt-get update
sudo apt-get upgrade
sudo apt-get install -y \
	guake \
	screen \
	git-core \
	htop \
	steam \
	indicator-multiload \
	xclip \
	redshift \
	synaptic \
	fortune-mod \
	cowsay \
	ddate \
	vlc \
	vlc-plugin-vlsub \
	x264 \
	ghc \
	compizconfig-settings-manager \
	python3-pip \
	python-pip

sudo apt autoremove -y
sudo rm -fr /var/cache/apt/archives/apt-fast/
sudo apt-get clean
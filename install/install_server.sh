sudo apt-get update
sudo apt-get upgrade
sudo apt-get install -y \
	guake \
	screen \
	git-core \
	htop \
	steam \
	xclip \
	fortune-mod \
	cowsay \
	ddate \
	ghc \
	python3-pip \
	python-pip \

sudo apt autoremove -y
sudo rm -fr /var/cache/apt/archives/apt-fast/
sudo apt-get clean

sudo apt update
sudo apt upgrade
sudo apt install -y \
	git-core \
	htop \
	fortune-mod \
	cowsay \
	ddate \
	python3-pip \
	python-pip \
	tmux \
	libpq-dev \
	python-dev \
	bash-completion \
	gnupg2 \
	scdaemon \
	direnv \
	lolcat


sudo apt clean

pip install --user virtualenvwrapper
pip3 install --user ipython

pip3 install --user -r install/python-packages
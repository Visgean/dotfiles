#!/bin/sh

sudo apt update
sudo apt install apt-transport-https

sudo add-apt-repository universe
wget -q -O - https://deb.torproject.org/torproject.org/A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89.asc | sudo apt-key add -

echo "deb https://deb.torproject.org/torproject.org $(lsb_release -cs) main" | sudo tee -a /etc/apt/sources

sudo apt update

sudo apt install tor torbrowser-launcher

sudo apt-get install apt-transport-https ca-certificates

curl -fsSL https://yum.dockerproject.org/gpg | sudo apt-key add -


sudo add-apt-repository "deb https://apt.dockerproject.org/repo/ ubuntu-$(lsb_release -cs) main"



sudo apt-get update
sudo apt-get -y install docker-engine


sudo pip3 install docker-compose

sudo usermod -aG docker $USER

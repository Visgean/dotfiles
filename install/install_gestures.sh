sudo apt-get install xdotool wmctrl libinput-tools 

git clone http://github.com/bulletmark/libinput-gestures
cd libinput-gestures
sudo make install

cd ..
rm -fr libinput-getstures

sudo gpasswd -a $USER input  # Log out and back in to assign this group

# see http://askubuntu.com/questions/789915/ubuntu-16-04-multitouch-gestures

libinput-gestures-setup autostart
#!/bin/sh


sudo ufw allow ssh
sudo ufw allow http
sudo ufw allow https

sudo ufw default deny
sudo ufw enable
#!/bin/sh


rm ~/.bashrc
rm ~/.gitconfig
rm ~/.screenrc
rm ~/.config/user-dirs.dirs
rm ~/.tmux.conf


ln configs/bashrc ~/.bashrc
ln configs/gitconfig ~/.gitconfig
ln configs/screenrc ~/.screenrc
ln configs/user-dirs.dirs ~/.config/user-dirs.dirs
ln configs/tmux.conf ~/.tmux.conf

mkdir -p ~/p

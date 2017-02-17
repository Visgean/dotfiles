cp .bashrc ~
cp .gitconfig ~
cp .screenrc ~
cp -R .emacs.d/ ~/
mkdir -p ~/p
cp -R bin ~/p
cp user-dirs.dirs ~/.config/

cp tmux.conf ~/.tmux.conf
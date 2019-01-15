#!/bin/sh

# install cli tools
bash ./cli_only.sh
bash ./install/base.sh

bash ./configure_gnome_shell.sh
bash ./move_configs.sh
bash ./install/spotify.sh

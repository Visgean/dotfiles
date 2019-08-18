#!/bin/sh

# install cli tools
bash ./install/cli_only.sh
bash ./install/base.sh

bash ./load_dconf.sh
bash ./move_configs.sh
bash ./install/spotify.sh
bash ./install/darktable.sh
bash ./install/latex.sh

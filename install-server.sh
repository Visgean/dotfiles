#!/bin/sh

# install cli tools
bash ./install/cli_only.sh
bash ./move_configs.sh

bash ./install/firewall-server.sh

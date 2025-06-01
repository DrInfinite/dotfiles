#!/bin/bash

# Perform a full initial system update
sudo pacman -Syu

bash ~/shell/scripts/setup/setup_yay.sh
bash ~/shell/scripts/setup/setup_font.sh
bash ~/shell/scripts/setup/setup_firmware.sh
bash ~/shell/scripts/setup/setup_programs.sh

# setup gnome settings
bash ~/shell/scripts/setup/setup_gnome_settings.sh
bash ~/shell/scripts/setup/setup_gnome_extensions.sh
bash ~/shell/scripts/setup/setup_gnome_keymaps.sh

# Remove orphaned packages
pacman -Qtdq | sudo pacman -Rns -

#!/usr/bin/zsh

# Perform a full initial system update
sudo pacman -Syu

zsh ~/shell/zsh/scripts/setup/setup_yay.sh
zsh ~/shell/zsh/scripts/setup/setup_font.sh
zsh ~/shell/zsh/scripts/setup/setup_firmware.sh
zsh ~/shell/zsh/scripts/setup/setup_programs.sh

# setup gnome settings
zsh ~/shell/zsh/scripts/setup/setup_gnome_settings.sh
zsh ~/shell/zsh/scripts/setup/setup_gnome_extensions.sh
zsh ~/shell/zsh/scripts/setup/setup_gnome_keymaps.sh

# Remove orphaned packages
pacman -Qtdq | sudo pacman -Rns -

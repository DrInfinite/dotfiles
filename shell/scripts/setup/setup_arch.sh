# Perform a full initial system update
sudo pacman -Syu

# Setup the shell
~/shell/scripts/setup/setup_yay.sh
~/shell/scripts/setup/setup_zsh.sh
~/shell/scripts/setup/setup_font.sh
~/shell/scripts/setup/setup_firmware.sh
~/shell/scripts/setup/setup_programs.sh
~/shell/scripts/setup/setup_docker.sh

# setup gnome settings
~/shell/scripts/setup/setup_gnome_settings.sh
~/shell/scripts/setup/setup_gnome_extensions.sh
~/shell/scripts/setup/setup_gnome_keymaps.sh

gum confirm "Do you want to install Yazi, a blazingly fast rust-based terminal file manager?"
~/shell/scripts/setup/programs/setup_yazi.sh

gum confirm "Do you want to install Emacs, an extensible, customizable, free/libre text editor?"
~/shell/scripts/setup/programs/setup_emacs.sh

gum confirm "Do you want to install Docker, a containerisation tool for developers?"
~/shell/scripts/setup/programs/setup_docker.sh

# Remove orphaned packages
pacman -Qtdq | sudo pacman -Rns -

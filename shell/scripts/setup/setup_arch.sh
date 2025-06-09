# Perform a full initial system update
sudo pacman -Syu

~/shell/scripts/setup/setup_yay.sh
~/shell/scripts/setup/setup_font.sh
~/shell/scripts/setup/setup_firmware.sh
~/shell/scripts/setup/setup_programs.sh
~/shell/scripts/setup/setup_docker.sh

# setup gnome settings
~/shell/scripts/setup/setup_gnome_settings.sh
~/shell/scripts/setup/setup_gnome_extensions.sh
~/shell/scripts/setup/setup_gnome_keymaps.sh

# Remove orphaned packages
pacman -Qtdq | sudo pacman -Rns -

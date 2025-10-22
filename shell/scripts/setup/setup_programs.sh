#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

#------------------------------------------------
# Script: setup_programs.sh
# Purpose: Install GUI apps & CLI tools (official repos + AUR)
# Usage: ./setup_programs.sh
#------------------------------------------------

# GUI applications (official repos)
official_gui_pkgs=(
    thunderbird      # Email client with graphical interface
    alacritty        # GPU‑accelerated terminal emulator (GUI front end)
    bitwarden        # GUI password manager
)

# CLI / terminal tools (official repos)
official_cli_pkgs=(
    btop
    nvim
    fastfetch
    tmux
    zoxide
    git
    lazygit
    fzf
    ripgrep
    fd
    eza
    starship
    bat
    tmux
    wikiman
    tokei
    gum
)

# AUR packages
aur_gui_pkgs=(
    zen-browser-bin  # GUI web browser from AUR
)

echo "Installing GUI applications via pacman..."
sudo pacman -S --needed "${official_gui_pkgs[@]}"

echo "Installing CLI tools via pacman..."
sudo pacman -S --needed "${official_cli_pkgs[@]}"

echo "Installing AUR packages via yay..."
yay -S --needed "${aur_gui_pkgs[@]}"

echo "Removing unwanted packages"
sudo pacman -Rs "$(pacman -Qtdq)"

echo "Performing full system update"
sudo pacman -Syu

echo "Installation complete."

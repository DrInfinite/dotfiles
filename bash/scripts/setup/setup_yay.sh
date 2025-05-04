#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Install git and base-devel if they are not already installed
echo "Installing git and base-devel..."
sudo pacman -S --needed git base-devel

# Clone the yay AUR helper
echo "Cloning yay repository..."
git clone https://aur.archlinux.org/yay.git

# Change into the yay directory
cd yay

# Build and install yay
echo "Building and installing yay..."
makepkg -si

# Go back and remove the yay directory
cd ..
echo "Removing yay repository..."
rm -rf yay

echo "yay has been installed and the repository has been cleaned up."

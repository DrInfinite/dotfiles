#!/bin/bash

echo "==> Updating system packages..."
sudo pacman -Syu --noconfirm

echo "==> Installing firmware from official repositories..."
sudo pacman -S --noconfirm \
  linux-firmware \
  linux-firmware-qlogic \
  linux-firmware-bnx2x \
  linux-firmware-liquidio \
  linux-firmware-mellanox \
  linux-firmware-nfp

echo "==> Installing firmware from AUR using yay..."
yay -S --noconfirm \
  aic94xx-firmware \
  ast-firmware \
  wd719x-firmware \
  upd72020x-fw

echo "==> Skipping qat_420xx firmware: Not available yet"
echo "    Please check upstream or Intel documentation for future availability."

echo "==> Firmware installation complete."

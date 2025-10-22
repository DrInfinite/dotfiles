#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

#------------------------------------------------
# Script: setup_firmware.sh
# Purpose: Install required firmware packages (official & AUR) in one go.
# Usage: ./setup_firmware.sh
#------------------------------------------------

# Define arrays of packages
official_pkgs=(
    linux-firmware-qlogic
    linux-firmware-bnx2x
    linux-firmware-liquidio
    linux-firmware-mellanox
    linux-firmware-nfp
    linux-firmware-qlogic   # duplicate? consider removing one
    linux-headers
    libvpl
    linux-firmware-intel
    vpl-gpu-rt
)

aur_pkgs=(
    aic94xx-firmware
    ast-firmware
    wd719x-firmware
    upd72020x-fw
)

# Install official repository packages
echo "Installing official packages via pacman..."
sudo pacman -S --needed "${official_pkgs[@]}"

# Install AUR packages via yay
echo "Installing AUR packages via yay..."
yay -S --needed "${aur_pkgs[@]}"

echo "All done."

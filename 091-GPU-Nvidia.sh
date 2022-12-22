#!/bin/bash
set -e

echo -e '\e[33m' #rumena
echo "################################################################################"
echo "    NVIDIA"
echo "################################################################################"

# imam:
# - Intel HD Graphicd 630 (i915)    
# - NVIDIA GF GTX 1050 Mo (GP107M)  => NV137
sudo pacman -S --noconfirm --needed nvidia
sudo pacman -S --noconfirm --needed nvidia-utils
sudo pacman -S --noconfirm --needed nvidia-settings
sudo pacman -S --noconfirm --needed nvidia-prime

#yay -S optimus-manager

echo -e '\e[32m' #zelena
echo "################################################################################"
echo "    NVIDIA INSTALLED"
echo "################################################################################"

sleep 1

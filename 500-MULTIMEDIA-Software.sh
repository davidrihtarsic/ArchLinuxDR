#!/bin/bash

set -e

echo -e '\e[33m'
echo "################################################################################"
echo "    Installing MULTIMEDIA tools"
echo "################################################################################"

# images
sudo pacman -S --noconfirm --needed feh

# videos
trizen -S --noconfirm --needed popcorntime
sudo pacman -S --noconfirm --needed deluge
sudo pacman -S --noconfirm --needed vlc
sudo pacman -S --noconfirm --needed mpv

# music
sudo pacman -S --noconfirm --needed cmus
trizen -S --noconfirm --needed skypeforlinux-stable-bin
echo -e '\e[32m'
echo "################################################################################"
echo "    MULTIMEDIA TOOLS INSTALLED"
echo "################################################################################"

sleep 1

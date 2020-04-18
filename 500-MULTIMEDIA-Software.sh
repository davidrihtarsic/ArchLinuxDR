#!/bin/bash

set -e

echo -e '\e[33m'
echo "################################################################################"
echo "    Installing MULTIMEDIA tools"
echo "################################################################################"

# images
sudo pacman -S --noconfirm --needed feh
sudo pacman -S --noconfirm --needed gimp
trizen -S --noconfirm --needed gimp-plugin-registry
## sxiv
[[ -d ~/.local/build/sxiv ]] && rm -R ~/.local/build/sxiv
git clone https://github.com/muennich/sxiv.git
cd ~/.local/build/sxiv && sudo make clean install

sudo pacman -S --noconfirm --needed darktable

# videos
trizen -S --noconfirm --needed popcorntime
sudo pacman -S --noconfirm --needed deluge
sudo pacman -S --noconfirm --needed vlc
sudo pacman -S --noconfirm --needed mpv

# music
sudo pacman -S --noconfirm --needed cmus
sudo pacman -S --noconfirm --needed audacity

# social
trizen -S --noconfirm --needed skypeforlinux-stable-bin
echo -e '\e[32m'
echo "################################################################################"
echo "    MULTIMEDIA TOOLS INSTALLED"
echo "################################################################################"

sleep 1

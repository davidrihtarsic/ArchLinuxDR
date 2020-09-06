#!/bin/bash

set -e

echo -e '\e[33m'
echo "################################################################################"
echo "    Installing MULTIMEDIA tools"
echo "################################################################################"
#########################
# IMAGES
#########################
sudo pacman -S --noconfirm --needed feh
## sxiv - best image viewer
[[ -d ~/.local/build/sxiv ]] && rm -R ~/.local/build/sxiv
git clone https://github.com/muennich/sxiv.git
cd ~/.local/build/sxiv && sudo make clean install
## GIMP
sudo pacman -S --noconfirm --needed gimp
### content aware plug-in
trizen -S --noconfirm --needed gimp-plugin-registry
trizen -S python2-gimp
## EXIF data of pictures
trizen -S -noconfirm --needed exiv2
#trizen -S -noconfirm --needed perl-image-exiftool

sudo pacman -S --noconfirm --needed darktable

#########################
# VIDEOS
#########################
trizen -S --noconfirm --needed popcorntime
sudo pacman -S --noconfirm --needed deluge
sudo pacman -S --noconfirm --needed vlc
sudo pacman -S --noconfirm --needed mpv

sudo pacman -S --noconfirm --needed kdenlive
trizen -S --noconfirm --needed breeze breeze-icons

#########################
# MUSIC
#########################
sudo pacman -S --noconfirm --needed cmus
sudo pacman -S --noconfirm --needed audacity

#########################
# SOCIAL
#########################
trizen -S --noconfirm --needed skypeforlinux-stable-bin
echo -e '\e[32m'
echo "################################################################################"
echo "    MULTIMEDIA TOOLS INSTALLED"
echo "################################################################################"

sleep 1

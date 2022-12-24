#! /bin/bash
set -e
echo -e '\e[33m' #rumena
echo "################################################################################"
echo "   Install DWM programs"
echo "################################################################################"
sudo pacman -S --noconfirm --needed sxhkd
sudo pacman -S --noconfirm --needed xsel
sudo pacman -S --noconfirm --needed xclip

sudo pacman -S --noconfirm --needed xscreensaver
sudo pacman -S --noconfirm --needed rofi

sudo pacman -S --noconfirm --needed dmenu
sudo pacman -S --noconfirm --needed terminator
sudo pacman -S --noconfirm --needed termite
trizen -S --noconfirm --needed st-luke-git

echo -e '\e[32m' #zelena
echo "################################################################################"
echo "   DWM PROGRAMS INSTALLED"
echo "################################################################################"

#jcp ~/Files/GitHub/ArcoLinuxDR/home-david/.xinitrc ~/.xinitrc
#ln -s ./home-david/.xinitrc ~/.xinitrc


sleep 1

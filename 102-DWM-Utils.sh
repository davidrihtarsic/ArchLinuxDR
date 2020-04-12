#! /bin/bash
set -e
echo "################################################################################"
echo "   Instalation DWM Utils"
echo "################################################################################"

sudo pacman -S --noconfirm --needed rofi
#sudo pacman -S --noconfirm --needed compton
sudo pacman -S --noconfirm --needed picom
sudo pacman -S --noconfirm --needed jgmenu
# network
#trizen -S --noconfirm --needed networkmanager-dmenu
trizen -S --noconfirm --needed networkmanager-dmenu-git

echo "################################################################################"
echo "   DWM Widow Manager INSTALLED"
echo "################################################################################"

# sudo pacman -S --noconfirm --needed xscreensaver
sleep 1

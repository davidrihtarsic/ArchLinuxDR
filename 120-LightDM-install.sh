#!/bin/bash
set -e
echo "################################################################################"
echo "   Log-in manager"
echo "################################################################################"

sudo pacman -S --noconfirm --needed lightdm
sudo pacman -S --noconfirm --needed lightdm-gtk-greeter lightdm-gtk-greeter-settings
sudo pacman -S --noconfirm --needed arcolinux-wallpapers-git

sudo systemctl enable lightdm.service -f
sudo systemctl set-default graphical.target

echo "################################################################################"
echo "   LigthDM Installed"
echo "################################################################################"

sleep 1

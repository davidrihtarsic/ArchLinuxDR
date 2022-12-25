#! /bin/bash
set -e

echo "################################################################################"
echo "   Installing DWM dependancies"
echo "################################################################################"

# Instal DWM dependancies
# compositor -> transparency
sudo pacman -S --noconfirm --needed picom

# menus & notifier
sudo pacman -S --noconfirm --needed dmenu
sudo pacman -S --noconfirm --needed rofi
sudo pacman -S --noconfirm --needed notify-osd

# key bindings
sudo pacman -S --noconfirm --needed xorg-xset
sudo pacman -S --noconfirm --needed sxhkd
sudo pacman -S --noconfirm --needed xsel
sudo pacman -S --noconfirm --needed xclip

#terminal drag-and-drop
yay -S --noconfirm --needed dragon-drop

# network
#trizen -S --noconfirm --needed networkmanager-dmenu
yay -S --noconfirm --needed networkmanager-dmenu-git

echo "################################################################################"
echo "   Install generic DWM"
echo "################################################################################"
yay -S --noconfirm --needed dwm

sleep 1

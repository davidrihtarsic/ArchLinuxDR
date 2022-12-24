#! /bin/bash
set -e
echo "################################################################################"
echo "   Instalation DWM Utils"
echo "################################################################################"

# compositor -> transparency
sudo pacman -S --noconfirm --needed picom

#sudo pacman -S --noconfirm --needed jgmenu
sudo pacman -S --noconfirm --needed fzf
sudo pacman -S --noconfirm --needed feh

# menus & notifier
sudo pacman -S --noconfirm --needed dmenu
sudo pacman -S --noconfirm --needed rofi
sudo pacman -S --noconfirm --needed notify-osd

# key bindings
sudo pacman -S --noconfirm --needed sxhkd
sudo pacman -S --noconfirm --needed xsel
sudo pacman -S --noconfirm --needed xclip

#terminal drag-and-drop
yay -S --noconfirm --needed dragon-drop

# network
#trizen -S --noconfirm --needed networkmanager-dmenu
yay -S --noconfirm --needed networkmanager-dmenu-git

echo "################################################################################"
echo "   DWM Widow Manager INSTALLED"
echo "################################################################################"

# sudo pacman -S --noconfirm --needed xscreensaver
sleep 1

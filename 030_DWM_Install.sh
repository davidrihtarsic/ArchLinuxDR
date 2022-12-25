#! /bin/bash
set -e

echo "################################################################################"
echo "   Installing DWM dependancies"
echo "################################################################################"

PWD=$(pwd)
# ok ... first we need terminal emulator
yay -S --noconfirm --needed st-luke-git
sudo pacman -S --noconfirm --needed alacritty

# Instal DWM dependancies
# compositor -> transparency
#sudo pacman -S --noconfirm --needed picom
sudo pacman -S --noconfirm --needed xcompmgr
sudo pacman -S --noconfirm --needed feh

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
# yay -S --noconfirm --needed dwm
[[ -d ~/.local/build/dwm ]] && rm -R ~/.local/build/dwm
git clone https://git.suckless.org/dwm ~/.local/build/dwm
cd ~/.local/build/dwm && make
$PWD/888_Sync_HomeDir.sh
cd ~/.local/build/dwm && sudo make clean install

sleep 1

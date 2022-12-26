#! /bin/bash
set -e

echo -e '\e[33m' #rumena
echo "################################################################################"
echo "   Installing DWM dependancies"
echo "################################################################################"
echo -e '\e[00m' #default

REPO=$(pwd)
# ok ... first we need terminal emulator
yay -S --noconfirm --needed st-luke-git
sudo pacman -S --noconfirm --needed polkit
sudo pacman -S --noconfirm --needed firefox

#sudo pacman -S --noconfirm --needed alacritty

# Instal DWM dependancies
# compositor -> transparency
#sudo pacman -S --noconfirm --needed picom
sudo pacman -S --noconfirm --needed xcompmgr
sudo pacman -S --noconfirm --needed feh
sudo pacman -S --noconfirm --needed fzf

# menus & notifier
sudo pacman -S --noconfirm --needed dmenu
sudo pacman -S --noconfirm --needed rofi
sudo pacman -S --noconfirm --needed notify-osd

# xorg stuff
sudo pacman -S --noconfirm --needed xorg-xset

# key bindings
sudo pacman -S --noconfirm --needed sxhkd
sudo pacman -S --noconfirm --needed xsel
sudo pacman -S --noconfirm --needed xclip

#terminal drag-and-drop
yay -S --noconfirm --needed dragon-drop

# network
#trizen -S --noconfirm --needed networkmanager-dmenu
yay -S --noconfirm --needed networkmanager-dmenu-git

# sleep and hibernate
# sudo pacman -S --noconfirm --needed xautolock

echo -e '\e[33m' #rumena
echo "################################################################################"
echo "   Install generic DWM"
echo "################################################################################"
echo -e '\e[00m' #default

# yay -S --noconfirm --needed dwm
[[ -d ~/.local/build/dwm ]] && rm -R ~/.local/build/dwm
git clone https://git.suckless.org/dwm ~/.local/build/dwm
cd ~/.local/build/dwm && make
cd $REPO
ln -f -s ~+/home/david/.local/build/dwm/config.h ~/.local/build/dwm/config.h
cd ~/.local/build/dwm && sudo make clean install

echo -e '\e[34m' #zelena
echo "################################################################################"
echo "   DWM Installation is DONE"
echo "################################################################################"
echo -e '\e[00m' #default

sleep 1

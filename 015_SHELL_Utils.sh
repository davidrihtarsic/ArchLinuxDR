#! /bin/bash
set -e
echo -e '\e[33m' #rumena
echo "################################################################################"
echo "    Installing esential utils..."
echo "################################################################################"

sudo pacman -S --noconfirm --needed tree man neofetch fzf feh dmenu rofi notify-osd qalculate-gtk

sudo pacman -S --noconfirm --needed sxhkd
sudo pacman -S --noconfirm --needed xsel
sudo pacman -S --noconfirm --needed xclip
#terminal drag-and-drop
yay -S --noconfirm --needed dragon-drop

echo -e '\e[32m' #zelena
echo "################################################################################"
echo "    Esentials INSTALLED"
echo "################################################################################"

git config --global user.name "David Rihtarsic"
git config --global user.email "david.rihtarsic@gmail.com"

sleep 1

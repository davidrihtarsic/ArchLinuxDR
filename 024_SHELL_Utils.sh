#! /bin/bash
set -e
echo -e '\e[33m' #rumena
echo "################################################################################"
echo "    Installing esential utils..."
echo "################################################################################"

sudo pacman -S --noconfirm --needed man
sudo pacman -S --noconfirm --needed tree
sudo pacman -S --noconfirm --needed neofetch
sudo pacman -S --noconfirm --needed fzf
sudo pacman -S --noconfirm --needed dmenu
sudo pacman -S --noconfirm --needed rofi
sudo pacman -S --noconfirm --needed notify-osd
sudo pacman -S --noconfirm --needed qalculate-gtk
sudo pacman -S --noconfirm --needed feh

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

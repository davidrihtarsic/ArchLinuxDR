#! /bin/bash
set -e
echo -e '\e[33m' #rumena
echo "################################################################################"
echo "   Installing RANGER"
echo "################################################################################"
PWD=$(pwd)

yay -S ranger-git
[ ! -d "$HOME/.deleted_files" ] && mkdir ~/.deleted_files
sudo pacman -S --noconfirm --needed python-pip
# IMAGEs preview
sudo pip3 install ueberzug
sudo pacman -S --noconfirm --needed ffmpegthumbnailer
# CODE preview
sudo pacman -S --noconfirm --needed highlight
# LibreOFFICE preview
sudo pacman -S --noconfirm --needed odt2txt

echo $PWD
echo -e '\e[32m' #zelena
echo "################################################################################"
echo "   RANGER INSTALLED"
echo "################################################################################"

sleep 1

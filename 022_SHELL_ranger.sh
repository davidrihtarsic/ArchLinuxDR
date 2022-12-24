#! /bin/bash
set -e
echo -e '\e[33m' #rumena
echo "################################################################################"
echo "   Installing RANGER"
echo "################################################################################"
PWD=$(pwd)

sudo pacman -S --noconfirm --needed ranger
[ ! -d "$HOME/.deleted_files" ] && mkdir ~/.deleted_files
# IMAGEs preview
sudo pacman -S --noconfirm --needed ueberzug
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
echo -e '\e[00m' #default

sleep 1

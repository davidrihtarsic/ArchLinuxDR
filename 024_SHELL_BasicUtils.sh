#! /bin/bash
set -e
echo -e '\e[33m' #rumena
echo "################################################################################"
echo "    Installing esential utils..."
echo "################################################################################"
echo -e '\e[00m' #default

sudo pacman -S --noconfirm --needed man
sudo pacman -S --noconfirm --needed tree
sudo pacman -S --noconfirm --needed neofetch
sudo pacman -S --noconfirm --needed qalculate-gtk

echo -e '\e[32m' #zelena
echo "################################################################################"
echo "    Esentials INSTALLED"
echo "################################################################################"
echo -e '\e[00m' #default

git config --global user.name "David Rihtarsic"
git config --global user.email "david.rihtarsic@gmail.com"

sleep 1

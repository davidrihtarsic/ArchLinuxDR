#! /bin/bash
set -e

echo -e '\e[33m' #rumena
echo "################################################################################"
echo "    Installing OH-MY-ZSH"
echo "################################################################################"

sudo pacman -S --noconfirm --needed zsh
chsh -s /bin/zsh

echo -e '\e[32m' #rumena
echo "LogOUT & LogIN to take efect!!"
sleep 1

./888_Sync_HomeDir.sh

echo -e '\e[32m' #zelena
echo "################################################################################"
echo "    ZSH Installed"
echo "################################################################################"
echo -e '\e[00m' #default
sleep 1

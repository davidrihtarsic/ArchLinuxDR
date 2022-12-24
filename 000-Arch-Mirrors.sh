#! /bin/bash
set -e

echo -e '\e[33m' #rumena
echo "################################################################################"
echo "    FIND FASTEST MIRRORS..."
echo "################################################################################"

sudo pacman -S --noconfirm --needed reflector

sudo reflector --number 10 --country Slovenia --country Finland --country Germany --country Italy --country Austria --verbose --sort rate --save /etc/pacman.d/mirrorlist

echo -e '\e[34m' #zelena
echo "################################################################################"
echo "    MIRRORS INSTALLED"
echo "################################################################################"
echo -e '\e[00m'

sleep 1

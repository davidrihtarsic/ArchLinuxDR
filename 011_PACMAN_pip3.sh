#! /bin/bash
set -e

echo -e '\e[33m' #rumena
echo "################################################################################"
echo "   Installing PIP3 - python installer"
echo "################################################################################"

sudo pacman -S --noconfirm --needed python-pip

#instaliraj tudi rpm-tools za instalacijo rpm paketov
# maprimer MS teams je na voljo za linux le v RPM paketu.
# yay -S rpm-tools

echo -e '\e[32m' #zelena
echo "################################################################################"
echo "    YAY AUR manager INSTALLED"
echo "################################################################################"

sleep 1

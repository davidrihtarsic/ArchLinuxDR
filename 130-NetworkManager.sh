#! /bin/bash
set -e
echo "################################################################################"
echo "   Instalation MetworkManager Tools"
echo "################################################################################"

sudo pacman -S --noconfirm --needed nm-connection-editor
trizen -S --noconfirm --needed networkmanager-dmenu-git

echo "################################################################################"
echo "   NetowrkManager Tools INSTALLED"
echo "################################################################################"

sleep 1

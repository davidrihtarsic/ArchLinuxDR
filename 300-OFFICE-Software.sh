#!/bin/bash
set -e
echo -e '\e[33m'
echo "################################################################################"
echo "    Installing OFFICE tools"
echo "################################################################################"

# Office
# sudo pacman -S --noconfirm --needed libreoffice-still
trizen -S --noconfirm --needed libreoffice-dev-bin
# ker ni delal Base ...
sudo  pacman -S jdk11-openjdk
sudo pacman -S --noconfirm --needed galculator
# Mail
sudo pacman -S --noconfirm --needed thunderbird
# Web
trizen -S --noconfirm --needed google-chrome
sudo pacman -S --noconfirm --needed deluge
# PDF
sudo pacman -S --noconfirm --needed zathura
sudo pacman -S --noconfirm --needed zathura-pdf-poppler
sudo pacman -S --noconfirm --needed pdftk
# Utils
sudo pacman -S --noconfirm --needed nemo nemo-fileroller nemo-terminal nemo-preview

echo -e '\e[32m'
echo "################################################################################"
echo "    OFFICE TOOLS INSTALLED"
echo "################################################################################"

sleep 1

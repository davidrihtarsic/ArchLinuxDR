#!/bin/bash

set -e

echo -e '\e[33m'
echo "################################################################################"
echo "    Installing DEVELOPMENT tools"
echo "################################################################################"

sudo pacman -S --noconfirm --needed arduino
sudo usermod -a -G uucp david
sudo pacman -S --noconfirm --needed arduino-avr-core
sudo echo "export _JAVA_AWT_WM_NONREPARENTING=1" |sudo tee -a /etc/profile.d/jre.sh

sudo pacman -S virtualbox
#nato izbereš opcijo 2 *arch*
#instaliral sem tudi linux in linux-headers (ne vem če je potrebno... je delalo po rebootu)

#still testing...
#trizen -S preload

echo -e '\e[32m'
echo "################################################################################"
echo "    DEVELOPMENT TOOLS INSTALLED"
echo "################################################################################"

sleep 1

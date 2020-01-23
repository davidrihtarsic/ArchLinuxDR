#! /bin/bash 
set -e
echo -e '\e[33m' #rumena
echo "################################################################################"
echo "   Install Terminal Utils"
echo "################################################################################"
sudo pacman -S --noconfirm --needed sxhkd
sudo pacman -S --noconfirm --needed xsel
sudo pacman -S --noconfirm --needed xclip

sudo pacman -S --noconfirm --needed neofetch
sudo pip3 install mdv

sudo pacman -S --noconfirm --needed calcurse
#sinc z googlom
#potrebno namestiti še httplib2
#sudo pip3 install httplib2 --upgrade
#sudo pip3 install --user oauth2client

sudo pacman -S --noconfirm --needed zip unzip
echo -e '\e[34m' #zelena
echo "################################################################################"
echo "   ALL Utils INSTALLED"
echo "################################################################################"

sleep 1

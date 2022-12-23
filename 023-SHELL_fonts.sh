#!/bin/bash
set -e

echo -e '\e[33m' #rumena
echo "################################################################################"
echo "   Installling Basic Fonts"
echo "################################################################################"
#sudo pacman -S adobe-source-sans-pro-fonts --noconfirm --needed
#sudo pacman -S cantarell-fonts --noconfirm --needed
#sudo pacman -S noto-fonts --noconfirm --needed
#sudo pacman -S ttf-bitstream-vera --noconfirm --needed
#sudo pacman -S ttf-dejavu --noconfirm --needed
#sudo pacman -S ttf-droid --noconfirm --needed
#sudo pacman -S ttf-hack --noconfirm --needed
#sudo pacman -S ttf-inconsolata --noconfirm --needed
#sudo pacman -S ttf-liberation --noconfirm --needed
#sudo pacman -S ttf-roboto --noconfirm --needed
#sudo pacman -S ttf-ubuntu-font-family --noconfirm --needed
#sudo pacman -S tamsyn-font --noconfirm --needed
#yay -S --noconfirm --needed ttf-symbola
#yay -S --noconfirm --needed noto-fonts-emoji
#yay -S --noconfirm --needed ttf-twemoji
#yay -S --noconfirm --needed ttf-twemoji-color
#yay -S --noconfirm --needed tf-font-awesome
#yay -S --noconfirm --needed ttf-font-awesome
#yay -S --noconfirm --needed otf-font-awesome

sudo pacman -S --noconfirm --needed otf-hermit
# install microsoft fonts (e.g. Arial, New Times Roman...)
yay -S --noconfirm --needed ttf-ms-fonts

echo -e '\e[32m' #zelena
echo "################################################################################"
echo "   Basic Fonts Completed"
echo "################################################################################"


echo -e '\e[33m' #rumena
echo "################################################################################"
echo "   Installing SYMBOLS & ICONS Fonts"
echo "################################################################################"
# Look for nerd-fonts... in AUR
#--------------------------------------------

# ti fonti so za puščice
yay -S --noconfirm --needed nerd-fonts-dejavu-complete
yay -S --noconfirm --needed nerd-fonts-droid-sans-mono

# ti fonti so za večino emoji smilijev, hrana...
sudo pacman -S --noconfirm --needed ttf-joypixels

# za terminalni addon spaceship potrebuješ fonte:
yay -S powerline-fonts


echo -e '\e[32m' #zelena
echo "################################################################################"
echo "   SYMBOLS & ICONS Font Installed"
echo "################################################################################"

# echo "################################################################################"
# echo "        Installing fonts for conkies                    "
# echo "################################################################################"

# [ -d $HOME"/.fonts" ] || mkdir -p $HOME"/.fonts"
# 
# 
# echo "Copy fonts to .fonts"
# 
# cp Personal/settings/fonts/* ~/.fonts/
# 
# echo "Building new fonts into the cache files";
# echo "Depending on the number of fonts, this may take a while..."
# fc-cache -fv ~/.fonts

# echo "################################################################################"
# echo "   Fonts have been copied and loaded   "
# echo "################################################################################"
sleep 1

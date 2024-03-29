#!/bin/bash
set -e

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

# trizen -S --noconfirm --needed ttf-symbola
#trizen -S --noconfirm --needed noto-fonts-emoji
#trizen -S --noconfirm --needed ttf-twemoji
#trizen -S --noconfirm --needed ttf-twemoji-color
trizen -S --noconfirm --needed tf-font-awesome
trizen -S --noconfirm --needed ttf-font-awesome
trizen -S --noconfirm --needed otf-font-awesome

echo "################################################################################"
echo "   Basic Fonts Completed"
echo "################################################################################"


echo "################################################################################"
echo "   Installing SYMBOLS & ICONS Fonts"
echo "################################################################################"
# Look for nerd-fonts... in AUR
#--------------------------------------------
#ta jih ima res veliko ampal so malo manjši znaki...
#trizen -S --noconfirm --needed nerd-fonts-complete
trizen -S --noconfirm --needed otf-hermit

trizen -S --noconfirm --needed nerd-fonts-droid-sans-mono
trizen -S --noconfirm --needed nerd-fonts-dejavu-complete

# trizen -S --noconfirm --needed noto-fonts-emoji noto-fonts-emoji-blob noto-fonts-emoji-lollipop noto-fonts-emoji-marshmallow
sudo pacman -S ttf-joypixels
yay -S ttf-twemoji-color
yay -S ttf-symbola
sudo pacman -S noto-fonts-emoji

# za terminalni addon spaceship potrebuješ fonte:
yay -S powerline-fonts
# in nato v .vimrc moraš prilepiti:
# let g:airline_powerline_fonts = 1

# install microsoft fonts (e.g. Arial, New Times Roman...)
yay -S ttf-ms-fonts
# tole mogoče za acrobatreaderdc
yay -S ttf-segoe-ui-variable

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

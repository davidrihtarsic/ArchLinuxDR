#!/bin/bash
set -e
echo -e '\e[33m'
echo "################################################################################"
echo "    Installing OFFICE tools"
echo "################################################################################"

# Office
# sudo pacman -S --noconfirm --needed libreoffice-still
trizen -S --noconfirm --needed libreoffice-dev-bin
trizen -S docx2txt
# ker ni delal Base ...
sudo  pacman -S jdk11-openjdk
sudo pacman -S --noconfirm --needed galculator
# Mail
sudo pacman -S --noconfirm --needed thunderbird
# Web
#trizen -S --noconfirm --needed google-chrome
trizen -S --noconfirm --needed brave-bin
sudo pacman -S --noconfirm --needed deluge
# PDF
sudo pacman -S --noconfirm --needed zathura
sudo pacman -S --noconfirm --needed zathura-pdf-poppler
sudo pacman -S --noconfirm --needed pdftk
# Utils
sudo pacman -S --noconfirm --needed nemo nemo-fileroller nemo-terminal nemo-preview

################################################
# load slovenian spell checker...for NVIM & libreoffice
wget --directory-prefix=/home/david/Downloads https://extensions.libreoffice.org/extensions/slovenian-dictionary-pack/2019-12.25/@@download/file/pack-sl.oxt
unzip ~/Downloads/pack-sl.oxt -d ~/Downloads/slo-dic
mkdir ~/.config/nvim/spell && cp -r ~/Downloads/slo-dic/sl_SI.* ~/.config/nvim/spell
nvim --cmd 'mkspell! ~/.config/nvim/spell/sl ~/.config/nvim/spell/sl_SI|quit'
#################################################

echo -e '\e[32m'
echo "################################################################################"
echo "    OFFICE TOOLS INSTALLED"
echo "################################################################################"

sleep 1

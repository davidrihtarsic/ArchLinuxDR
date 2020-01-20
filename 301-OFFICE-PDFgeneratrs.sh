#!/bin/bash
set -e
echo -e '\e[33m'
echo "################################################################################"
echo "    Installing PDF generators"
echo "################################################################################"
# Pandoc, pdfutils, pdftk...
# LaTEC
sudo pacman -S --noconfirm --needed pandoc panzer-git
sudo pacman -S --noconfirm --needed texlive-latexextra
sudo pacman -S --noconfirm --needed texlive-fontsextra
# po inštalaciji panzer-git sem moral narediti ~/.panzer directory
trizen -S --noconfirm --needed pandoc-crossref pandoc-citeproc

echo -e '\e[32m'
echo "################################################################################"
echo "    OFFICE TOOLS INSTALLED"
echo "################################################################################"

sleep 1

#!/bin/bash
set -e
echo -e '\e[33m'
echo "################################################################################"
echo "    Installing CAD Software"
echo "################################################################################"
#LibreCAD
############
#FreeCAD
############
# mogoče je po tem začelo delati, ker sem nainštaliral:
# - qt4 (mogole bi delalo tudi z qt5?
#... je pa na : https://aur.archlinux.org/packages/freecad-git/
# pisalo, da je nekaj narobe...
#trizen -S --noconfirm --needed freecad-git
#trizen -S --noconfirm --needed freecad-assembly3-git
#... neaah... čakamo na novo verzijo...

# Ker ni delal navaden Freecad sem moral namestiti "freecad-appimage"
#trizen -S --noconfirm --needed freecad-appimage
#so popravili...
trizen -S --noconfirm --needed freecad-git
#assembly2 je pa že not :P
#  za FEM potrebuješ še calculix in gmsh-bin
trizen -S --noconfirm --needed calculix
trizen -S --noconfirm --needed gmsh-bin
#ne vem če je potrebno a sem nainštaliral še netgen-git
trizen -S --noconfirm --needed netgen-git
trizen -S python-yaml

############
#CURA
############


echo -e '\e[32m'
echo "################################################################################"
echo "    CAD Sof. INSTALLED"
echo "################################################################################"

sleep 1

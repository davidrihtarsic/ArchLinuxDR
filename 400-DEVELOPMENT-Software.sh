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

exit 55
sudo pacman -S virtualbox
#nato izbereš opcijo 2 *arch*
#instaliral sem tudi linux in linux-headers (ne vem če je potrebno... je delalo po rebootu)

#still testing...
#mislim, da dela... browser se res naloži hitrej... in thunderbird tudi...
#>trizen -S preload
#moral pa sem enablat in startat service
#>systemctl enable preload.service
#>systemctl start preload.service
# ccls je c++ servere za completition code and snippets.
trizen -S --noconfirm --needed ccls

######################################################################
# ELECTRONICS SOFTWARE
######################################################################
trizen -S --noconfirm --needed fritzing

#====================================================================
# Yenka
#====================================================================
## dependencies
# trizen -S --noconfirm --needed nas
## yenka package file download form
## http://yenka.com/file/YK/3.2.7/Yenka_3.2.7.package
## change permission of Yenka_3.2.7.package
## run sudo ./Yenka_3.2.7.package
# ne dela, ker je 32-bitni program jaz pa imam 64-bitni
#$ file Yenka.app
#Yenka.app: ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), dynamically linked, interpreter /lib/ld-linux.so.2, for GNU/Linux 2.6.9, BuildID[sha1]=771789f30620445b2e1a4ad1fdd1fc6ea0e3fc2d, stripped

# install lib32-glibc
#trying with darling
# NO-GO... :(
echo -e '\e[32m'
echo "################################################################################"
echo "    DEVELOPMENT TOOLS INSTALLED"
echo "################################################################################"

sleep 1

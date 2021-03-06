#! /bin/bash
set -e

echo -e '\e[33m' #rumena
echo "################################################################################"
echo "    Enable ALL cores for Compiling!"
echo "################################################################################"

numberofcores=$(grep -c ^processor /proc/cpuinfo)

if [ $numberofcores -gt 1 ]
then
        echo "You have " $numberofcores" cores."
        echo "Changing the makeflags for "$numberofcores" cores."
        sudo sed -i 's/#MAKEFLAGS="-j2"/MAKEFLAGS="-j'$(($numberofcores+1))'"/g' /etc/makepkg.conf;
        echo "Changing the compression settings for "$numberofcores" cores."
        sudo sed -i 's/COMPRESSXZ=(xz -c -z -)/COMPRESSXZ=(xz -c -T '"$numberofcores"' -z -)/g' /etc/makepkg.conf
else
        echo "No change."
fi

echo -e '\e[32m' #zelena
echo "################################################################################"
echo "   All cores will be used during building and compression"
echo "################################################################################"
sleep 1

#! /bin/bash
set -e

echo -e '\e[33m' #rumena
echo "################################################################################"
echo "    Mount FILES on startup"
echo "################################################################################"

sudo bash -c 'echo "UUID=964cc5be-454f-43ba-afa9-8a4570cbc164    /home/david/Files    ext4    defaults    0    0" >> /etc/fstab'
ln -s /home/david/Files/Pictures /home/david/Pictures

echo -e '\e[32m' #zelena
echo "################################################################################"
echo "   /dev/sdb1 MOUNTED"
echo "################################################################################"
sleep 1

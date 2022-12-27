#! /bin/bash
set -e

echo -e '\e[33m' #rumena
echo "################################################################################"
echo "   SSH-KEYGEN"
echo "################################################################################"
echo -e '\e[00m'

sudo pacman --noconfirm --needed openssh
# make ney key:
# ssh-keygen -t ed25519 -C "david.rihtarsic@gmail.com"
# enter, ok, enter...
# ... in tako imamo v ~/.ssh dva fila :
# id25519
# id25519.pub
#
# nato skopiraš txt iz id25519.pub
#
# in greš v git svoj repozitorij:
# Settings -> SSH and GPG keys
# in dodaš SSH key -> Add SSHkey
#

echo -e '\e[32m' #zelena
echo "################################################################################"
echo "    SSH-KEYGEN"
echo "################################################################################"
echo -e '\e[00m'

sleep 1


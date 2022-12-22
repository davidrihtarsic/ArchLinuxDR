#!/bin/bash
set -e
echo -e '\e[33m'
echo "################################################################################"
echo "    Make simbolyc links to $HOME directory"
echo "################################################################################"

tree -dafi --noreport home | xargs -I{} mkdir -p /{}
find home -type f | xargs -I{} ln -f s ~+/{}

sleep 1

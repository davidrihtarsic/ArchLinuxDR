#!/bin/bash
set -e
echo -e '\e[33m'
echo "################################################################################"
echo "    Make simbolyc links to $HOME directory"
echo "################################################################################"

tree -dafi --noreport home | xargs -I{} mkdir -p /{}

sleep 1

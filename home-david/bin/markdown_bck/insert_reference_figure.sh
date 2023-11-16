#!/bin/zsh

grep -oE "\{#fig.*\}" $1 | dmenu -l 10 | sed 's/{#//' | sed 's/}//'

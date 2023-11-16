#!/bin/zsh

grep -oE "\{#eq.*\}" $1 | dmenu -l 10 | sed 's/{#//' | sed 's/}//'

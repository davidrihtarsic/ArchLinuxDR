#!/bin/zsh

grep -oE "\{#lst.*\}" $1 | dmenu -l 10 | sed 's/{#//' | sed 's/}//'

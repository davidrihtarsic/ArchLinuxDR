#!/bin/zsh

grep -oE "\{#tbl.*\}" $1 | dmenu -l 10 | sed 's/{#//' | sed 's/}//'

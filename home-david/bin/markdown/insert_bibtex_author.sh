#! /bin/sh

cat bibtex.bib|grep "^@"|sed 's/^@.*{//'|sed 's/,$//'|dmenu -l 5

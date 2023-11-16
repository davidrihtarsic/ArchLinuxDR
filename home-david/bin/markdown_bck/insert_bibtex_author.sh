#! /bin/sh

#cat bibtex.bib|grep "^@"|sed 's/^@.*{//'|sed 's/,$//'|dmenu -l 5
cat ~/Files/Work/UL-PeF/Articles/00-BibTex/bibtex.bib|grep "^@"|sed 's/^@.*{//'|sed 's/,$//'|dmenu -l 5

#! /bin/sh

#figure=$(ls ./slike | dmenu -l 10)
#echo "![<++>](./slike/$figure){#fig:$figure}<++>"

figure=$(ls ./slike/* | sxiv -tioq)
echo "![<++>]($figure){#fig:<++>}<++>"

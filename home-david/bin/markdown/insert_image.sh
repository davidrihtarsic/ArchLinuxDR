#! /bin/sh

FIGURE_FILE=$(ls ./slike/* | sxiv -tioq)
FIGURE_TAG=$(basename $FIGURE_FILE | sed 's/\..*//')
echo "![<++>]($FIGURE_FILE){#fig:$FIGURE_TAG}<++>"

#! /bin/sh

FIGURE_FILE=$(sxiv -toq ./slike ./images)
FIGURE_TAG=$(basename $FIGURE_FILE | sed 's/\..*//')
echo "![<++>]($FIGURE_FILE){#fig:$FIGURE_TAG}<++>"

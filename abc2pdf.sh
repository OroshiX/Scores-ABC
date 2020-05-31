#!/bin/bash
# Convert abc to pdf
# usage:
#	sh abc2pdf.sh test.abc
# Or to watch:
#
if [ $# -ne 2 ]; then
	echo "usage:\n\tsh $0 <input.abc> <output.pdf>"
	echo "Or to watch :\n\twatch -n 5 'sh $0 <input.abc> <output.pdf>'"
	exit 1
fi
abcm2ps "$1" -O - | ps2pdf -sPAPERSIZE=a4 - > "$2"

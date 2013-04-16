#!/bin/bash
# AUTHOR: Léo Perrin <leoperrin@picarresursix.fr>
# Time-stamp: <2013-04-16 22:52:59 leo>

# Turns an image (or a pdf) into an image (or a collection of images)
# of a given format.

if [[ $1 != "" ]]
then
    format=$(zenity --list pdf eps jpg png gif --column="Output format")
    if [[ $format != "" ]]
    then
        for file in $*
        do
            out=$(sed "s/\.[^\.]*//" <<< $file).$format
            if [[ $format == "pdf" ]]; then
                convert -quality 100 -density 600x600 $file $out
            else
                convert $file $out
            fi
        done
    else
        notify-send "Failed" "Unknown format "$out
    fi
fi

#!/bin/bash
# AUTHOR: Leo "picarresursix" Perrin, <leoperrin@picarresursix.fr>
# Time-stamp: <2013-04-16 17:29:24 leo>


# Resizes the file in $1 into one which has half its width. The scale
# is kept.

if [[ $1 != "" ]]
then
    convert $1 -resize 50% small-$1
fi

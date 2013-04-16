#!/bin/bash
# AUTHOR: Léo Perrin <leoperrin@picarresursix.fr>
# Time-stamp: <2013-04-16 21:14:09 leo>

# Assemble pictures into a pdf and/or appends them to the end of a pdf
# file.
#
# First, the name of the first parameter is stripped of its extenstion
# and of a possible trailing number. Then, the pdf extension is
# appended to its name and a pdf is created from the images stored in
# all the parameters.


if [[ $1 != "" ]]
then
    out=$(echo $1 | sed "s/\.[^\.]*$//" | sed "s/[-~_\ ({]*[0-9]*[)}]*$//").pdf
    convert $* $out
fi

<!-- Time-stamp: <2013-04-16 23:21:02 leo> -->


Image and pdf files modification
================================

Purpose
-------

If you run some environment using GNOME and want a dead simple way to
reduce the size of images, to assemble them into a pdf or what
not. These small bash script provide a simple way to use the
[convert](http://linux.die.net/man/1/convert) program to achieve
these.


resize.sh
---------

Resizes the file in `$1` into one which has half its width. The scale
is kept. Suggested nautilus action:

 + _name_: Resize (0.5)
 + _command_: path/to/resize.sh
 + _parameter_: %f%o
 + _MIME type_: Matches image/*
    

convert-to-format.sh
--------------------

Turns an image (or a pdf) into an image (or a collection of images) of
a given format. The format is chosen by selecting one in a list in a
new window --- uses
[zenity](http://en.wikipedia.org/wiki/Zenity). Suggested nautilus-action:

 + _name_: Convert to format
 + _command_: path/to/convert-to-format.sh
 + _parameter_: %F
 + _MIME type_: Matches "image/\*" or "\*/pdf"


to-pdf.sh
---------

Turns a list of images into a pdf. It is better if the images are
already numbered. Suggested nautilus-action:

 + _name_: Images to pdf
 + _command_: path/to/to-pdf.sh
 + _parameter_: %F
 + _MIME type_: Matches "image/\*"
 
 
concat-pdf.sh
---------

If used with two args, concatenates them into a new pdf. If only one
is given, the corresponding pdf is appended at the end of another pdf
selected from a new window --- uses
[zenity](http://en.wikipedia.org/wiki/Zenity). Suggested nautilus-action:

 + _name_: Append to pdf
 + _command_: path/to/concat-pdf.sh
 + _parameter_: %f
 + _MIME type_: Matches "\*/pdf"

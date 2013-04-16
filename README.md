<!-- Time-stamp: <2013-04-15 16:31:39 leo> -->

My nautilus actions
===================

Keywords
--------

*Nautilus*, *GUI*, *shortcut*, *customization*.


Purpose
-------

All the small things that require a command line to do but can be
convenient to do from a file browser *can* be, provided you use the
nautilus file-browser and the nautilus-actions program.

This achieved throught the addition of commands in the right-click
menu. They can be configured so as to appear only in a given
context. For instance, I added an item _decrypt_ which appears only if
the extension of the file is _.enc_ and its counterpart, _encrypt_,
which appears only if the file's extension is *not* _.enc_.


Examples
--------

In order to easily encrypt a single file for a secure upload in "the
cloud" (or whereever I suspect it will not be safe), I added an action
to do it. Right-click on the file, left-click on _Encrypt_,
done. Simple as that: a new file called _previous.name.enc_ is created
alongside the original one. And to open the encrypted file,
right-click, left-click on _Decrypt_, done: the file is decrypted and
then opened with the default application automatically. When closing
the said application, the encrypted file is updated.

Since images are often to big to be sent by mail, I also added an
action to reduce their size by 50%.

How to add an action
--------------------

First of all, install
[nautilus-actions](http://www.grumz.net/index.php?q=taxonomy/term/2/9&PHPSESSID=136f06e74b6d25057331972a9c05e4fc).

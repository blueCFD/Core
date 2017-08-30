---
layout: faq
title: How to use the blueCFD-Core (namely the MSys2) terminal and how to install new packages with the package manager
---


## Question

The original question was regarding how to install `gedit` and other packages.
This page aims to answer that and where to find more details on how to use the
MSys2 terminal that is provided with blueCFD-Core (dubbed `blueCFD-Core 
terminal` to make it a bit easier to tell apart from the official MSys2
terminal).



## Answer

The [MSys2](http://www.msys2.org) installation that is being used in
blueCFD-Core are using for providing a Linux-like environment does not require
using `sudo` for installing packages and currently provides two text editors:

 * **vim** - which is a text editor directly on the terminal interface
 * **Notepad2** - which can be opened with the command "nano"

As for how to install packages in MSys2, please see the
[MSys2 project wiki](https://sourceforge.net/p/msys2/wiki/Home/).

**Note:** updating MSys2 software stack is currently not yet tested with
blueCFD-Core 2016-1. If you do so, you will likely need to rebuild OpenFOAM 4.x
from source code, by following these instructions:
[Quick notes on how to update build](https://github.com/blueCFD/Core/wiki/Quick-notes-on-how-to-update-build)


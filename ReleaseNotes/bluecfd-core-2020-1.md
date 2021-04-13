---
layout: page
title: Release Notes for blueCFD-Core 2020-1
date: 2021-04-13
---

These release notes address the changes made for the 2020-1 release, which is
divided into the following topics:

  * In section [Software provided with installers](software-provided-with-installers)
  is provided further information about the installer
  [blueCFD-Core-2020-1-win64-setup.exe](https://github.com/blueCFD/Core/releases/tag/blueCFD-Core-2020-1).

  * Section [Cumulative changes and notes](#cumulative-changes-and-notes)
  lists what we provide in the git development branch
  [blueCFD-Core branch 8](https://github.com/blueCFD/OpenFOAM-dev/tree/blueCFD-Core-8).

<br>

## Software provided with installers

Here is listed what software and respective versions are provided inside the
binary installers, namely:

  * [blueCFD-Core-2020-1-win64-setup.exe](https://github.com/blueCFD/Core/releases/tag/blueCFD-Core-2020-1)

      * [MSys2](http://msys2.github.io/) x86_64, from 27th of August 2020.
      We selected [MSys2](http://msys2.github.io/) because it provides an open
      source software development infrastructure and is more up-to-date than
      the original MSys project. There are several pre-installed packages,
      including:
          * CMake 3.17.3
          * GCC 10.2.0
          * GDB 9.2
          * Git 2.27.0
          * Meld 3.21.0
          * Python 3.8.4
          * Gnuplot 5.2.8
          * Many other packages are already pre-installed. To get a full list
          after installation, run in MSys2: `pacman -Q`

      * OpenFOAM 8, commit
      [218f49416d](https://github.com/OpenFOAM/OpenFOAM-8/commits/218f49416d26264af7e84df7cbebca25ad43a172),
      20th of October 2020.

      * ThirdParty 8, commit
      [686040d3c0](https://github.com/OpenFOAM/ThirdParty-8/commits/686040d3c082b19de8040bbb61a9b800821eb09a),
      21st of July 2020.

      * [Notepad2](http://www.flos-freeware.ch/notepad2.html) 4.2.25

      * ParaView 5.6.2, 64-bit, built with the options: Qt5, OpenGL2.
          * Using the pre-built one from the [ParaView.org website](http://www.paraview.org/download/).

      * [MS-MPI 7.1](https://www.microsoft.com/en-us/download/details.aspx?id=52981)
      is the default MPI version, which can optionally be installed later on.


## Cumulative changes and notes

This release provides the following changes relative to the
[previous version of blueCFD-Core](bluecfd-core-2017-2):

1. Upgraded ported code to work with OpenFOAM 8 (up to commit
   [218f49416d](https://github.com/OpenFOAM/OpenFOAM-8/commits/218f49416d26264af7e84df7cbebca25ad43a172),
   20th of October 2020), based on the changes done up to blueCFD-Core 2017-2.

    * Associated to this, MS-MPI 7.1 and 8.1 are supported, with MS-MPI 7.1
      used by default, so that it's easier to support blueCFD-Core 2017.

2. Using MSys2 installer 20200720, updated on the 27th of August 2020.

3. gnuplot 5.2.8 was installed via MSys2 package manager, instead of providing
   it as a separate package.

4. ParaView 5.6.2 with Qt5, OpenGL2 is provided in the `AddOns` folder
   with the installer.

5. New script `wmake/wmakeListAllIncludedLibraries`.

6. There are a few tutorial cases known to not be working as intended, but we
   did not have time/budget to work on fixing them, as listed in
   [Issue #171](https://github.com/blueCFD/Core/issues/171).

7. Fixed [Issue #96](https://github.com/blueCFD/Core/issues/96): _Open terminal
   via right-click in Windows Explorer does not work with paths that have
   spaces_

8. Fixed [Issue #97](https://github.com/blueCFD/Core/issues/97): _Can't use
   foamMonitor on Windows, due to x11 terminal not existing for gnuplot_

9. Fixed [Issue #161](https://github.com/blueCFD/Core/issues/161): _Missing
   GPLv3 statement on the resources/version file_

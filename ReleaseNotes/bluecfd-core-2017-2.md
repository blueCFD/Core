---
layout: page
title: Release Notes for blueCFD-Core 2017-2
---

These release notes address the changes made for the 2017-2 release, which is
divided into the following topics:

  * In section [Software provided with installers](software-provided-with-installers)
  is provided further information about the installer
  [blueCFD-Core-2017-2-win64-setup.exe](https://github.com/blueCFD/Core/releases/tag/blueCFD-Core-2017-2).

  * Section [Cumulative changes and notes](#cumulative-changes-and-notes)
  lists what we provide in the git development branch
  [blueCFD-Core branch 5.x](https://github.com/blueCFD/OpenFOAM-dev/tree/blueCFD-Core-5.x).

<br>

## Software provided with installers

Here is listed what software and respective versions are provided inside the
binary installers, namely:

  * [blueCFD-Core-2017-2-win64-setup.exe](https://github.com/blueCFD/Core/releases/tag/blueCFD-Core-2017-2)

      * [MSys2](http://msys2.github.io/) x86_64, from 2018-02-20.
      We selected [MSys2](http://msys2.github.io/) because it provides an open
      source software development infrastructure and is more up-to-date than
      the original MSys project. There are several pre-installed packages,
      including:
          * CMake 3.9.2
          * GCC 7.2.0
          * GDB 8.0.1
          * Git 2.14.1
          * Meld 3.16.4
          * Python 2.7.14
          * Python 3.6.2
          * Gnuplot 5.2.0-3 (updated)
          * Evince 3.26.0
          * Ghostcript 9.21
          * Many other packages are already pre-installed. To get a full list
          after installation, run in MSys2: `pacman -Q`

      * OpenFOAM 5.x, commit
      [19576d14a099e0b21e88a22b57fcf027d00ffa50](https://github.com/OpenFOAM/OpenFOAM-5.x/commits/19576d14a099e0b21e88a22b57fcf027d00ffa50),
      26th of February 2018.

      * ThirdParty 5.x, commit
      [a807587a7babd4d03b62794b26e5ef4105301416](https://github.com/OpenFOAM/ThirdParty-5.x/commits/a807587a7babd4d03b62794b26e5ef4105301416),
      10th of February 2018.

      * [Notepad2](http://www.flos-freeware.ch/notepad2.html) 4.2.25

      * ParaView 5.4.1, 64-bit, built with the options: Qt5, OpenGL2, MPI.
          * Using the pre-built one from the [ParaView.org website](http://www.paraview.org/download/).
          * This needs MS-MPI to be installed in your system.

      * [MS-MPI 7.1](https://www.microsoft.com/en-us/download/details.aspx?id=52981)
      is the default MPI version, which can optionally be installed later on.

      * [MS-MPI 8.1](https://www.microsoft.com/en-us/download/details.aspx?id=55494),
      is provided as an optional alternative to 7.1 and will only be installed
      if selected in the custom installation options.


## Cumulative changes and notes

This release provides the following changes relative to the
[previous version of blueCFD-Core](bluecfd-core-2017-1):

1. Sync up branch blueCFD-Core-5.x with upstream OpenFOAM 5.x:

    * From OpenFOAM-5.x repository, up to commit
      `19576d14a099e0b21e88a22b57fcf027d00ffa50`, 2018-02-26 14:12:48.

    * From ThirdParty-5.x repository, up to commit
      `a807587a7babd4d03b62794b26e5ef4105301416`, 2018-02-10 17:16:35.

2. Upgrade to latest Gnuplot on MSys2 so that it's possible to generate plots
   of type PNG and JPEG, even though it still has a bug when using the `help`
   command. `wgnuplot` is now possible to be used as well. See Issue
   [#78](https://github.com/blueCFD/Core/issues/78) for more details.

3. Ghostscript 9.21 and Evince 3.26.0 from MSys2 have also been installed, to
   make it easier to create and open PS, EPS and PDF files directly from the
   command line (see also Issue [#78](https://github.com/blueCFD/Core/issues/78)).

4. Removed our old - and now unused - script `bin/fixPatchExeNames`.

5. Replaced all symbolic linked scripts in the folder `bin` for the real ones,
   given that this feature is not properly supported on Windows.

6. Applied a bug fix that affected some installations of blueCFD-Core 2017,
   where Meld would not launch due to the lack of the highlight description
   files. See Issue [#83](https://github.com/blueCFD/Core/issues/83) for more
   details.

7. Minor change made to
   `$FOAM_SRC/OpenFOAM/db/dynamicLibrary/dynamicCode/dynamicCode.C`, so that
   the absolute path is used instead of the relative path for the binaries that
   are built on-the-fly. This was needed due to the 260 maximum character path
   for file/folder paths on Windows.

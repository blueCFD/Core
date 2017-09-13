---
layout: page
title: Release Notes for blueCFD-Core 2016-1
---

These release notes cover the changes made for the 2016-1 release, which covers:

  * In section [Software provided with installers](software-provided-with-installers)
  is provided further information about the following installers:
  
      * [blueCFD-Core-2016-1-win64-setup.exe](https://github.com/blueCFD/Core/releases/tag/blueCFD-Core-2016-1)

  * Section [Cumulative changes and notes](#cumulative-changes-and-notes)
  lists what we provide in the following git development branch:

      * [blueCFD-Core branch 4.x](https://github.com/blueCFD/OpenFOAM-dev/tree/blueCFD-Core-4.x)
      * [blueCFD-Core branch 3.0.x](https://github.com/blueCFD/OpenFOAM-dev/tree/blueCFD-Core-3.0.x) - partial port
      * [blueCFD-Core branch 2.3.x](https://github.com/blueCFD/OpenFOAM-2.3.x/tree/blueCFD-Core-2.3.x) - partial port
      * **Note**: Each branch refers to the respective OpenFOAM version.

<br>

## Software provided with installers

Here is listed what software and respective versions are provided inside the
binary installers, namely:

  * [blueCFD-Core-2016-1-win64-setup.exe](https://github.com/blueCFD/Core/releases/tag/blueCFD-Core-2016-1)

      * [MSys2](http://msys2.github.io/) x86_64, from 2016-02-05.
      We selected [MSys2](http://msys2.github.io/) because it provides an open
      source software development infrastructure and is more up-to-date than
      the original MSys project. There are several pre-installed packages,
      including:
          * CMake 3.4.1
          * GCC 5.3.0
          * GDB 7.11
          * Git 2.7.2
          * Meld 3.15.1
          * Python 2.7.11
          * Python 3.5.0
          * Many other packages are already pre-installed. To get a full list
          after installation, run in MSys2: `pacman -Q`

      * OpenFOAM 4.x, commit
      [7dfa780c481b8b79b1ee4d5bcf3e6b839a5ef017](https://github.com/OpenFOAM/OpenFOAM-4.x/commits/7dfa780c481b8b79b1ee4d5bcf3e6b839a5ef017),
      4th of August 2016.

      * ThirdParty 4.x, commit
      [eb996b45f4ed40bd6c22a7c2f66a5f091e606f34](https://github.com/OpenFOAM/ThirdParty-4.x/commits/eb996b45f4ed40bd6c22a7c2f66a5f091e606f34),
      3rd of August 2016.

      * [gnuplot](https://sourceforge.net/projects/gnuplot/files/gnuplot/5.0.4/) 5.0.4

      * [Notepad2](http://www.flos-freeware.ch/notepad2.html) 4.2.25

      * ParaView 5.1.2, 64-bit, built with the options: Qt4, OpenGL2, MPI.
          * Using the pre-built one from the [ParaView.org website](http://www.paraview.org/download/).
          * This needs MS-MPI to be installed in your system.

      * [MS-MPI 7.1](https://www.microsoft.com/en-us/download/details.aspx?id=52981),
      which can optionally be installed later on, when needed.


## Cumulative changes and notes

The following list provides the changes cumulative with the already ones listed
in [previous release notes](http://joomla.bluecape.com.pt/index.php?option=com_mamblog&Itemid=43&task=show&action=view&id=66):

  1. Switched from using MSys to using MSys2, as the main command line interface.

  2. `newWindow` is new alias for starting a new window from within MSys2,
  nonetheless, we can also use the key combination `Alt+F2`.

  3. Had to create a new script `wmake/scripts/makeReinterpretObjectPaths` for
  translating path names for the mingw-w64 GCC compiler. Used in `wmake/Makefile`.

  4. Had to replace all entries of `off_t` with `off64_t`, due to a crazy bug
  in the compiler stack, where `off_t` is somehow defined as `long int` instead
  of `long long`.

  5. Introduced a new script `wmake/scripts/makeObjectLongPath` for translating
  the object file paths to the long form when needed. Used in the `c++` rule
  files.

  6. For some Git clients, the [following is needed](https://github.com/msysgit/msysgit/wiki/Git-cannot-create-a-file-or-directory-with-a-long-path)

      * Example: `git config --local core.longpaths true`

  7. Due to how long the file paths are becoming in OpenFOAM's source code, we
  need to use Windows' `subst` command to define a drive letter where
  blueCFD-Core will operate from. This affects only certain operations (when
  building from source code), but installation can be made anywhere else.

  8. Certain solvers have a rather steep cyclic dependency loop, which we had
  to figure out a work-around for. This was first implemented in blueCFD-Core
  2.3-1 for `twoPhaseEulerFoam` and `multiphaseEulerFoam`; now it has been
  extended to support the `reactingEulerFoam` solver stack as well.

  9. We no longer need to rename files that have "Patch" in their name. This was
  fixed in GCC+MinGW itself, as provided in MSys2, which embeds a default manifest:
  `/mingw64/lib/gcc/x86_64-w64-mingw32/lib/default-manifest.o`

  10. Various MPI toolboxes are supported in varying degrees:

      * Tested with the build scripts:
          * MS-MPI 2012 (without SP1)
          * MS-MPI 2012 R2
          * MS-MPI 7.1

      * Present in the build scripts, but untested:
          * MPICH2 1.4.1p1
          * Open-MPI 1.6.2
          * MS-MPI 2008 R2

      * Notes about MPI version compatibility:
          * When building for the first time on a _clean system_ with MS-MPI 7.1, it
          has to be installed on the system, otherwise it will not run as intended.
          It can be uninstalled afterwards, if you need to develop for multiple
          MS-MPI versions.

          * From our experience, MS-MPI versions are usually not compatible with
          each other, e.g. it is not possible to use the build with MS-MPI 2012 on
          a machine that has MS-MPI 7.1 installed globally.
          
          * It is unknown if MPICH2 can run on a machine that has MS-MPI installed.

          * Open-MPI does not interfere with MS-MPI nor MPICH2.

          * MPICH2 and Open-MPI are no longer developed/supported by their
          respective developers to run on Windows.

          * Only tested with 64-bit builds.

  11. Metis 5.1.0 is supported and provided along with OpenFOAM 4.x in
  blueCFD-Core 2016-1, but it is not supported with OpenFOAM 3.0.x when
  blueCFD-Core 2016-1 was developed.

      * This might be fixed in the latest git branch
      [blueCFD-Core 3.0.x](https://github.com/blueCFD/OpenFOAM-dev/tree/blueCFD-Core-3.0.x).

  12. The command line in MSys2 now shows the current version/fork of OpenFOAM
  that is being used on that terminal. The idea was based on the example given
  [here](https://openfoamwiki.net/index.php/Tip/Foam_version_in_shell_prompt).

  13. The Windows Command Line option has been removed (`etc/BATCHRC.BAT` was
  removed), at least for the time being. There has been no clear feedback on
  whether this is still needed or not. Nonetheless, we can bring it back if
  people give us feedback on this.

  14. A weird linking bug was worked-around to build `surfaceAutoPatch`.
  This hack will hopefully not be needed in future builds. The issue can
  apparently pop up when building any other executable as well and this bug fix
  does not seem to be applicable to those other occurrences.

  15. `foamList` will give several error messages, but do not mind it much,
  because it is due to duplicate entries that loading additional libraries will
  lead to. Example:

      ```
      Duplicate entry alphaContactAngle in runtime selection table fvPatchField
      We're sorry, but the application crashed and safe stack tracing isn't
      available in this current implementation of blueCFD-Core patches for OpenFOAM.
      ```

  16. Ongoing development to have a faster and length-controllable test loop,
  extending beyond what OpenFOAM currently provides.

      * Many or most of the changes done in the test loop, will be contributed to
      the OpenFOAM Foundation, once we have ensured things work as intended.

  17. Integrated stack tracing is still not-operational within the ports released
  with blueCFD-Core 2016-1. Nonetheless, we're aiming to have it operational in
  the next release.

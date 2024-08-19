---
layout: page
title: Release Notes for blueCFD-Core 2024-1
date: 2024-08-19
---

These release notes address the changes made for the 2024-1 release, which is
divided into the following topics:

  * In section [Software provided with installers](software-provided-with-installers)
  is provided further information about the installer
  [blueCFD-Core-2024-1-win64-setup.exe](https://github.com/blueCFD/Core/releases/tag/blueCFD-Core-2024-1).

  * Section [Cumulative changes and notes](#cumulative-changes-and-notes)
  lists what we provide in the git development branch
  [blueCFD-Core branch 12](https://github.com/blueCFD/OpenFOAM-dev/tree/blueCFD-Core-12).

<br>

## Software provided with installers

Here is listed what software and respective versions are provided inside the
binary installers, namely:

  * [blueCFD-Core-2024-1-win64-setup.exe](https://github.com/blueCFD/Core/releases/tag/blueCFD-Core-2024-1)

      * [MSYS2](https://www.msys2.org/) x86_64, from 22th of July 2024.
      We selected [MSYS2](https://www.msys2.org/) because it provides an open
      source software development infrastructure and is more up-to-date than
      the original MSys project. There are several pre-installed packages,
      including:
          * CMake 3.30.0
          * GCC 14.2.0 
          * GCC 12.2.0 (used for OpenFOAM 12)
          * GDB 15.1
          * Git 2.45.2
          * Meld 3.22.2
          * Python 3.11.9
          * Gnuplot 6.0.1
          * Metis 5.1.0
          * ParMetis 4.0.3
          * Many other packages are already pre-installed. To get a full list
          after installation, run in MSYS2: `pacman -Q`

      * OpenFOAM 12, commit
      [6aa359dae6](https://github.com/OpenFOAM/OpenFOAM-12/commits/6aa359dae69662fc09b4f9e64b9a4fc365fef135),
      13th of August 2024.

      * ThirdParty 12, commit
      [cab725f5e7](https://github.com/OpenFOAM/ThirdParty-12/commits/cab725f5e7929e8f5ec35c54edc493a822355235),
      7th of July 2024.

      * [Notepad2](http://www.flos-freeware.ch/notepad2.html) 4.2.25

      * ParaView 5.11.2, 64-bit, built with the options: Qt5, OpenGL2.
          * Using the pre-built one from the [ParaView.org website](http://www.paraview.org/download/).

      * [MS-MPI 10.1.2](https://www.microsoft.com/en-us/download/details.aspx?id=52981)
      is the default MPI version, which can optionally be installed later on.
          * **Note**: Version 10.1.3 already existed when blueCFD-Core 2024 was
            being developped, but Scotch and Metis (and their parallel sibling
            implementations) were linked to 10.1.1, which is still compatible
            with 10.1.2.

## Cumulative changes and notes

This release provides the following changes relative to the
[previous version of blueCFD-Core](bluecfd-core-2020-1):

1. Upgraded ported code to work with OpenFOAM 12 (up to commit
   [6aa359dae69662fc09b4f9e64b9a4fc365fef135](https://github.com/OpenFOAM/OpenFOAM-12/commits/6aa359dae69662fc09b4f9e64b9a4fc365fef135),
   13th of August 2024), based on the changes done up to blueCFD-Core 2020-1.

    * Associated to this, MS-MPI 10.1 is used by default, being possible to
      build with support for MS-MPI 7.1 and 8.1.

    * If older versions of blueCFD-Core are meant to be used, then follow on 
      those the instructions 
      [using older MS-MPI versions than installed in Windows](https://github.com/blueCFD/Core/discussions/204#discussioncomment-2310485).

2. Using MSYS2 installer 20240507, updated on the 22th of July 2024.

3. gnuplot 6.0.1 was installed via MSYS2 package manager, including updates made
   to OpenFOAM's `foamMonitor` script.

4. ParaView 5.11.2 with Qt5 and OpenGL2, provided in the `AddOns` folder
   with the installer.

3. Sync bot has been implemented, to synchronize between blueCFD-Core-dev and
   OpenFOAM-dev repositories/branches, as well as blueCFD-Core-12 and
   OpenFOAM-12.

4. New wiki page:
   [Preparing a new MSYS2 installation for blueCFD‐Core development](https://github.com/blueCFD/Core/wiki/Preparing-a-new-MSYS2-installation-for-blueCFD%E2%80%90Core-development)

5. New section [Using `wmakeListAllIncludedLibraries` to revise the list of 
   necessary libraries](https://github.com/blueCFD/Core/wiki/Loose-notes-on-building-custom-code#using-wmakelistallincludedlibraries-to-revise-the-list-of-necessary-libraries)
   in the wiki page for
   [building custom code](https://github.com/blueCFD/Core/wiki/Loose-notes-on-building-custom-code).

6. Improved re-build performance, by having our `wmake`-based scripts use the
   same date as the original file they re-direct to.

7. Implemented a new function object `filterObjectsAsFiles`, part of a new
   library `blueCFDCoreFOs` for function objects. The `filterObjectsAsFiles`
   library assists in renaming files that do not work as-is on Windows and
   require renaming. This gives more control to the users, instead of having
   this feature hard-coded. All relevant tutorials have been revised accordingly
   to include this renaming strategy. For more details, look into the file
   `etc/caseDicts/functions/control/filterObjectsAsFiles`.

8. Resolved the issues listed here:
   [Milestone: blueCFD-Core 2024-1](https://github.com/blueCFD/Core/milestone/8?closed=1)

9. Fixed several new issues related to loading libraries that OpenFOAM wants to
   depend on others, but on Windows it ignores due to not linking directly. This
   was overcome by extending the force-load feature to rely on a defined
   resource string that our method `MSwindows::dlOpen()` will now look into to
   load more libraries. This will enforce all libraries listed in `Make/options`
   for each library to be loaded, as long as they are loaded at runtime.

10. Diagnosed that there were several issues in compiling OpenFOAM 12 with the
    default GCC 14.2 which comes with MSYS2 at this time, requiring the
    workaround of using an older packaged GCC 12.2 from MSYS2 within the
    ThirdParty-12 folder.

11. Extended and improved support for long file and folder paths for building
    source code, due to some tutorial cases which require very long folder names
    (e.g. `multiphaseEuler/pipeBend`). Notes:

    * The workaround relies on using the old 8.3 naming protocol from Windows
      95, which will not work in some Windows installations (e.g. Windows Server
      editions). The instructions to turn on this feature are documented here:
      [Q&A #253 -  Enabling support for the old 8.3 filename and extension format](https://github.com/blueCFD/Core/discussions/253)

    * Nevertheless, the physical limitation of this workaround can support files
      within a folder tree with 18 nested levels, due to the 259 character limit
      for default paths on Windows.

12. Created the wiki page
    [Known Working Tutorials](https://github.com/blueCFD/Core/wiki/Known-Working-Tutorials),
    including information gathered for past versions as well.

13. Several open issues which only required documenting how to solve them, have
    been copied/moved-adapted to the [Discussions](https://github.com/blueCFD/Core/discussions)
    section of the project. The Q&A section which was in the
    [main project's site](http://bluecfd.github.io/Core/), has been moved to the
    respective [Q&A category](https://github.com/blueCFD/Core/discussions/categories/q-a)
    at that [Discussions](https://github.com/blueCFD/Core/discussions) section.

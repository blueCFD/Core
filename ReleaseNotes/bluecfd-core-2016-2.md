---
layout: page
title: Release Notes for blueCFD-Core 2016-2
date: 2017-09-27
---

These release notes cover the changes made for the 2016-2 release:

  * [Software provided with installers](#software-provided-with-installers)
    lists the software stack made available through blueCFD-Core 2016-2.

  * Section [Cumulative changes and notes](#cumulative-changes-and-notes)
  lists what we provide in the following git development branch:

      * [blueCFD-Core branch 4.x](https://github.com/blueCFD/OpenFOAM-dev/tree/blueCFD-Core-4.x)
      * **Note**: Each branch refers to the respective OpenFOAM version.

<br>

## Software provided with installers

The following software is provided inside the binary installer:

  * [blueCFD-Core-2016-2-win64-setup.exe](https://github.com/blueCFD/Core/releases/tag/blueCFD-Core-2016-2)

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
      [d214c8dfd5ba56dd442bae186fd4fb50dd35c338](https://github.com/OpenFOAM/OpenFOAM-4.x/commits/d214c8dfd5ba56dd442bae186fd4fb50dd35c338),
      4th of September 2017.

      * ThirdParty 4.x, commit
      [c6a26e582129e726d645aefd01f7cb2f64c89a6a](https://github.com/OpenFOAM/ThirdParty-4.x/commits/c6a26e582129e726d645aefd01f7cb2f64c89a6a),
      12th of October 2016.

      * [gnuplot](https://sourceforge.net/projects/gnuplot/files/gnuplot/5.0.4/) 5.0.4

      * [Notepad2](http://www.flos-freeware.ch/notepad2.html) 4.2.25

      * ParaView 5.1.2, 64-bit, built with the options: Qt4, OpenGL2, MPI.
          * Using the pre-built one from the [ParaView.org website](http://www.paraview.org/download/).
          * This needs MS-MPI to be installed in your system.

      * [MS-MPI 7.1](https://www.microsoft.com/en-us/download/details.aspx?id=52981),
      which can optionally be installed later on, when needed.


## Cumulative changes and notes

This release provides the following changes relative to the
[previous version of blueCFD-Core](bluecfd-core-2016-1):

1. Synced with OpenFOAM 4.x, up to the commit
   [d214c8dfd5ba56dd442bae186fd4fb50dd35c338](https://github.com/OpenFOAM/OpenFOAM-4.x/commits/d214c8dfd5ba56dd442bae186fd4fb50dd35c338),
   4th of September 2017. This includes OpenFOAM 4.1 and all bug fixes release
   to this date.

2. [Issue #23](https://github.com/blueCFD/Core/issues/23) has been fixed, where
   the environment variable was not being unset `WM_COMPILER_ARCH`.

3. [Issue #3](https://github.com/blueCFD/Core/issues/3) has been fixed, where
   `wmake/scripts/makeVersionResourceFile` was having problems with file names
   with spaces. This was needed due to a bug in `windres` and the fix
   implemented works around the bug. See commit 
   [4a515eeac92771e08961fe02f3cc2790861fb306](https://github.com/blueCFD/OpenFOAM-dev/commit/4a515eeac92771e08961fe02f3cc2790861fb306)
   for more details.

4. Partially fixed [Issue #2](https://github.com/blueCFD/Core/issues/2), namely
   the problem with some applications not building with using `Allwmake`, due
   to a bug in binutils `ld`. The fix isn't perfect, because the bug is
   annoyingly hard to workaround, but the workaround to build with the `-k`
   option in `Allwmake` or run `wmNonStop` before doing a full build, will
   allow for a complete build in a single go. Several commits were used to try
   and work around the issue, so for more details, please check the history in
   [Issue #2](https://github.com/blueCFD/Core/issues/2).

5. Fixed [Issue #21](https://github.com/blueCFD/Core/issues/21), namely to fix
   the issues associated to updating the resource files, when using
   `Allwmake -update`. For more details, see the bug report and the associated
   commits listed there.

6. In preparation for supporting various OpenFOAM versions under the same MSys2
   environment, we have improved the script `~/sourceOF` to have two menus from
   which users can change the current version of OpenFOAM that is activated.
   The selected version will act as the new default for the next times that the
   user starts the MSys2 terminal. In order to not have the version defined by
   default, is to use the alias directly, e.g. `of4-64`.

7. Fixed [Issue #26](https://github.com/blueCFD/Core/issues/26), namely the
   problem where loading up the shell environment would take 2 to 6 seconds to
   load up, depending on the machine it was running on. On our test machine,
   the loading time was trimmed down from 1.8s to 0.3s. For more details, see
   commit [4388b5f311b3c1ca656a8e010e7854f73554d2aa](https://github.com/blueCFD/OpenFOAM-dev/commit/4388b5f311b3c1ca656a8e010e7854f73554d2aa)

8. Fixed [Issue #32](https://github.com/blueCFD/Core/issues/32), namely the
   problem with `wmakeVerifyExeDependencies` not working with custom solvers
   and utilities. Instructions have also been added to the wiki on how to build
   custom code:
   [Loose notes on building custom code](https://github.com/blueCFD/Core/wiki/Loose-notes-on-building-custom-code).

9. Fixed [Issue #33](https://github.com/blueCFD/Core/issues/33), by creating
   the wiki page
   [Command line installation options for blueCFD Core installers](https://github.com/blueCFD/Core/wiki/Command-line-installation-options-for-blueCFD-Core-installers).

10. Fixed [Issue #35](https://github.com/blueCFD/Core/issues/35), by changing
    the `TMP` and `TEMP` environment variables when running on Windows. For
    more details, see the issue for more details.

11. Fixed [Issue #36](https://github.com/blueCFD/Core/issues/36), by adding
    OpenFOAM's MPI-specific library path to the search path in
    `wmakeVerifyExeDependencies`.

12. Fixed [Issue #46](https://github.com/blueCFD/Core/issues/46) by adding the
    FAQ entry:
    [How to install and/or use another version of ParaView]({{ site.baseurl }}/FAQ/how-to-use-another-version-of-ParaView/)

13. Fixed [Issue #41](https://github.com/blueCFD/Core/issues/41), by adding the
    FAQ entry:
    [Error message _'Your "MINGW*" operating system is not supported by this release of OpenFOAM'_]({{ site.baseurl }}/FAQ/operating-system-is-not-supported-by-this-release-of-OpenFOAM/)

14. Fixed [Issue #28](https://github.com/blueCFD/Core/issues/28), by adding
    the FAQ entry:
    [How to use the blueCFD-Core (namely the MSys2) terminal and how to install new packages with the package manager]({{ site.baseurl }}/FAQ/how-to-use-the-blueCFD-Core-namely-MSys2-terminal-and-install-new-packages)

15. Fixed [Issue #29](https://github.com/blueCFD/Core/issues/29), by adding
    the FAQ entry:
    [How to install additional software, such as Gmsh]({{ site.baseurl }}/FAQ/how-to-install-additional-software-such-as-gmsh)

16. Fixed [Issue #43](https://github.com/blueCFD/Core/issues/43), namely the
    script `Allrun-pre` for the tutorial `mesh/foamyHexMesh/mixerVessel` was
    not working properly in Windows, because of how the scripts were being
    automatically adjusted to work on Windows.

17. Fixed [Issue #38](https://github.com/blueCFD/Core/issues/38), by adding the
    FAQ entry:
    [No-slip surfaces show non-zero velocities in ParaView]({{ site.baseurl }}/FAQ/no-slip-surfaces-show-non-zero-velocities-in-paraview/)

18. Fixed [Issue #6](https://github.com/blueCFD/Core/issues/6), by adding the
    FAQ entry:
    [Known limitations with the built-in reader in ParaView]({{ site.baseurl }}/FAQ/known-limitations-in-paraview-internal-reader/)

19. Fixed Issues [#11](https://github.com/blueCFD/Core/issues/11) and
    [#13](https://github.com/blueCFD/Core/issues/13), by adding a new FAQ entry
    that covers both issues:
    [Having problems with application crashing after adding an external application]({{ site.baseurl }}/FAQ/having-problems-application-crashing-after-adding-external-application/)

20. Fixed [Issue #40](https://github.com/blueCFD/Core/issues/40), by adding
    more details to the FAQ entry
    [Having other problems with custom source code]({{ site.baseurl }}/FAQ/having-other-problems-with-custom-source-code/),
    on how to use `gcc` and `g++` when it's installed in a path with spaces
    such as the default path `C:\Program Files`.

21. Added FAQ entry:
    [Check the GPU support for OpenGL 2.x]({{ site.baseurl }}/FAQ/check-gpu-support-for-opengl-2/)

22. Partially fixed the [issue #16](https://github.com/blueCFD/Core/issues/16),
    namely to add Windows Command Line support back into blueCFD-Core. However,
    it's currently hard-coded to a single version of OpenFOAM and we are aiming
    in the future to support other versions within the same blueCFD-Core
    installation, therefore a new [Issue #50](https://github.com/blueCFD/Core/issues/50).

23. Fixed issue in `~/.inputrc` which was overriding the conventional word
    deletion key combination `Esc+Backspace`. The problem was that the key
    combination `Alt+Backspace` for _undo last combination_ was breaking the
    key combinations that used `Esc`.

24. Fixed bug that is triggered on Windows with the tutorial case
    `multiphase/interDyMFoam/ras/mixerVesselAMI`. The tutorial case was fixed
    in commit [fb7497026993f145d18ca4f8f38010981e6ba535](https://github.com/blueCFD/OpenFOAM-dev/commit/fb7497026993f145d18ca4f8f38010981e6ba535),
    but it's still to be further diagnosed and reported upstream in [issue #51](https://github.com/blueCFD/Core/issues/51).

25. Implemented workaround for the limitation that occurs when compiling
    assembly code to object file and/or when linking objects into the file
    binary. The workaround was implemented in commit
    [95ecc6d403dee726f8689fd66795f63b60bf50e2](https://github.com/blueCFD/OpenFOAM-dev/commit/95ecc6d403dee726f8689fd66795f63b60bf50e2).

    * Specifically the limitation is in `as.exe` and `ld.exe`, which don't
      fully support UNC paths that can be used for handling long paths, namely
      paths that have more than 259 characters (260 including the zero byte at
      the end of a C string).

26. Fixed [Issue #34](https://github.com/blueCFD/Core/issues/34), which now
    allows to install blueCFD-Core 2016-2 as read-only and have it
    automatically operate on the user's own Windows-assigned folders. For more
    details, see the respective FAQ entry:
    [Read-only installation of blueCFD-Core]({{ site.baseurl }}/FAQ/bluecfd-core-read-only-installation/)

27. Fixed [Issue #52](https://github.com/blueCFD/Core/issues/52), where very
    long path names to object files would lead to failure in compiling and/or
    linking those object files. It's not a full-proof implementation, but it's
    a workaround that works well when following the instructions in the wiki page
    [Quick notes on how to update build](https://github.com/blueCFD/Core/wiki/Quick-notes-on-how-to-update-build),
    specially the section
    [Setting up the work environment](https://github.com/blueCFD/Core/wiki/Quick-notes-on-how-to-update-build#setting-up-the-work-environment).

28. New FAQ entry for [Read-only installation of blueCFD-Core]({{ site.baseurl }}/FAQ/bluecfd-core-read-only-installation)
    has been created, for explaining how it worked in blueCFD-Core 2016-1 and
    how it now works in blueCFD-Core 2016-2.

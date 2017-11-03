---
layout: page
title: Release Notes for blueCFD-Core 2017-1
---

These release notes address the changes made for the 2017-1 release, which is
divided into the following topics:

  * In section [Software provided with installers](software-provided-with-installers)
  is provided further information about the installer
  [blueCFD-Core-2017-1-win64-setup.exe](https://github.com/blueCFD/Core/releases/tag/blueCFD-Core-2017-1).

  * Section [Cumulative changes and notes](#cumulative-changes-and-notes)
  lists what we provide in the git development branch
  [blueCFD-Core branch 5.x](https://github.com/blueCFD/OpenFOAM-dev/tree/blueCFD-Core-5.x).

<br>

## Software provided with installers

Here is listed what software and respective versions are provided inside the
binary installers, namely:

  * [blueCFD-Core-2017-1-win64-setup.exe](https://github.com/blueCFD/Core/releases/tag/blueCFD-Core-2017-1)

      * [MSys2](http://msys2.github.io/) x86_64, from 2016-02-05.
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
          * Gnuplot 5.2.0-1
          * Many other packages are already pre-installed. To get a full list
          after installation, run in MSys2: `pacman -Q`

      * OpenFOAM 5.x, commit
      [5f49a69300a1e15b9d927966960751b688e3dd86](https://github.com/OpenFOAM/OpenFOAM-5.x/commits/5f49a69300a1e15b9d927966960751b688e3dd86),
      31st of October 2017.

      * ThirdParty 5.x, commit
      [382629e0285fb2a3fa277dadcbfb5023f619c030](https://github.com/OpenFOAM/ThirdParty-5.x/commits/382629e0285fb2a3fa277dadcbfb5023f619c030),
      17th of August 2017.

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
[previous version of blueCFD-Core](bluecfd-core-2016-2):

1. Upgraded ported code to work with OpenFOAM 5.x (up to commit
   [5f49a69300a1e15b9d927966960751b688e3dd86](https://github.com/OpenFOAM/OpenFOAM-5.x/commit/5f49a69300a1e15b9d927966960751b688e3dd86),
   31st of October 2017), based on the changes done up to blueCFD-Core 2016-2.

    * Associated to this, MS-MPI 7.1 and 8.1 are supported, with MS-MPI 7.1
      used by default, so that it's easier to support blueCFD-Core 2016.

2. Using MSys2 installer 20161025, updated on the 29th of September 2017.

3. gnuplot 5.2.0 was installed via MSys2 package manager, instead of providing
   it as a separate package. The folder `/mingw64/share/gnuplot/docs` was added
   manually, by getting the one in the official Gnuplot 5.2.0 zip package for
   Windows and the Gnuplot reference card `gpcard.pdf` was retrieved from
   [Gnuplot's documentation page](http://www.gnuplot.info/documentation.html).

4. ParaView 5.4.1 with Qt5, OpenGL2 and MPI is provided in the `AddOns` folder
   with the installer.

5. Using GCC's `std::thread` and `std::mutex` that is part of the standard
   C++11, instead of using `pthread`, so that this way we can keep
   compatibility forward when new implementations are done on the thread
   handling on Windows in the GCC+mingw-w64 stack.

6. Fixed how Alt+F2 works, where it now will start the new terminal in the same
   folder as the previous terminal. This was achieved by following these
   instructions: [mintty wiki _Tips_, "Spawning a new terminal window in the same directory"](https://github.com/mintty/mintty/blob/master/wiki/Tips.md#spawning-a-new-terminal-window-in-the-same-directory)

7. Finished resolving Issue [#2](https://github.com/blueCFD/Core/issues/2), by
   undoing the padding hack. For people trying to compile OpenFOAM 5.x in
   blueCFD-Core 2016-1, please run the following commands to undo this change:

   ```
   foam
   git revert 4eb2a93149a5fbc509166be897df4d1532ca6bcb
   ```

8. Resolved Issue [#4](https://github.com/blueCFD/Core/issues/4) for signal
   management in `sigStopAtWriteNow` and `sigWriteNow`, although it's not yet
   entirely clear if it's working properly or not.

9. The [collated IO feature](https://openfoam.org/release/5-0/#parallel-io) is
   not working with blueCFD-Core 2017-1. More details about this limitation are
   being tracker in Issue [#68](https://github.com/blueCFD/Core/issues/68).

10. Issue [#22](https://github.com/blueCFD/Core/issues/22) is fixed, namely the
    tutorial case `multiphase/compressibleInterDyMFoam/RAS/sloshingTank2D` is
    now working properly.

11. Partially implemented the objectives in Issue [#57](https://github.com/blueCFD/Core/issues/57).
    More specifically, the ability to run `Alltest`, `Allrun` and
    `foamRunTutorials` with cases only in serial or parallel mode, as well as
    being able to launch several cases at the same time.

12. Implemented stack trace once again, by using and fixing the old code that
    was last used in blueCFD(-Core) 2.1. More details are provided in Issue
    [#7](https://github.com/blueCFD/Core/issues/7). However, this depends on
    using `cv2pdb` from the project [cv2pdb](https://github.com/rainers/cv2pdb/releases)
    (build from 9th of October 2017, 23h48m) for generating PDB files.
    **NOTES**:

    * The build being used of `cv2pdb` is a 32-bit binary that can
      only support DLL files up to 1GB of size. See Issue [#7](https://github.com/blueCFD/Core/issues/7)
      for more details.

    * Furthermore `cv2pdb` will only work if Microsoft Visual Studio is
      installed, so that either the DLL files `mspdb80.dll` or `mspdb100.dll`
      are installed.

13. Fixed Issue [#69](https://github.com/blueCFD/Core/issues/69), which means
    that it no longer outputs duplicate mentions to file dependency generation.
    Additionally, have implemented an adaptive long file path support, so that
    it's used only when necessary.

14. Fixed Issue [#70](https://github.com/blueCFD/Core/issues/70), making it no
    longer necessary to run `wmake` twice with `wmakeVerifyDependencies` in
    between for applications. The downside is that it will forcefully load all
    libraries instead of just those that are necessary.

15. The installer now adds all of the applications that have the `-parallel`
    option to the Windows Firewall, as part of the Issue [#59](https://github.com/blueCFD/Core/issues/59)
    for the installer creation of blueCFD-Core 2017-1.

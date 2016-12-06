---
layout: page
title: Frequently Asked Questions
---

List of questions:

  * [`mpirun` no longer works in blueCFD-Core 2.3-1, after installing blueCFD-Core 2016-1](#mpirun-no-longer-works-in-bluecfd-core-23-1-after-installing-bluecfd-core-2016-1)
  * [Uninstalling MS-MPI 7.1 did not solve problem with `mpirun` in blueCFD-Core 2.3-1](#uninstalling-ms-mpi-71-did-not-solve-problem-with-mpirun-in-bluecfd-core-23-1)
  * [Problems running tutorials that use `codeStream` and/or problems building source code](#problems-running-tutorials-that-use-codestream-andor-problems-building-source-code)
  * [Having other problems with custom source code](#having-other-problems-with-custom-source-code)
  * [Silent installation options](#silent-installation-options)

----

### `mpirun` no longer works in blueCFD-Core 2.3-1, after installing blueCFD-Core 2016-1

**Reason**: <br>
The MS-MPI 7.1 library that is installed by default into Windows with the
blueCFD-Core 2016 installer, is in conflict with the MS-MPI 2012 that
blueCFD-Core 2.3-1 uses by default.


**Solution**: <br>
There are 4 possible solutions:

  1. The simplest way is to get a copy of the necessary library `msmpi.dll` into
     the same folder as the binary you're trying to run. To do so, use one of
     the following steps:

        1. Start an MSys terminal for blueCFD-Core 2.3-1.

        2. Run the following command:

           ```
           which simpleFoam
           ```

           Change the name `simpleFoam` to whichever the name of the binary you
           want to use.

        3. Now depending on the path given, you need to switch to that folder.
           When in doubt, you can use either one of the following commands:

           ```
           cd $FOAM_APPBIN
           cd $FOAM_USER_APPBIN
           ```

        4. Now, we get a copy of the necessary MS-MPI library by running:

           ```
           cp $MPI_ARCH_PATH/bin/msmpi.dll ./
           ```

        5. It should now be fully operational and ready to go! Go back to the
           case folder and try running your application in parallel once more.
           You can go back to the previous folder where you were working on by
           running:

           ```
           cd -
           ```

  2. Another possibility is to change the default MPI option in blueCFD-Core
     2.3-1 to Open-MPI, although this means that users must use `foamJob` and
     not `mpirun` directly.

      * This can be done by going to Windows Start Menu -> blueCFD-Core 2.3 ->
        Settings -> MPI.

  3. Or a patch installer for blueCFD-Core 2.3-1 that provides support for MS-MPI
     7.1 can be created by blueCAPE.

      * If you need this, please use the [Issue tracker](https://github.com/blueCFD/Core/issues)
        or use the [Contact form](http://bluecfd.com/contact).

  4. Or uninstall MS-MPI 7.1 from Windows, through the Windows Uninstall interface.

      * Installing MS-MPI 7.1 is only needed to get the initial configurations
        up and running, so that blueCFD-Core 2016 could use the local
        installation of MS-MPI 7.1. Therefore, uninstalling it will make both
        versions work independently just fine.

      * Nonetheless, in order to use multiple machines in parallel for
        cooperative runs, MS-MPI 7.1 must be installed in Windows.

      * **Note**: Simply uninstalling it will not fully solve the problem, as further
        detailed in the next Q&A: [Uninstalling MS-MPI 7.1 did not solve problem
        with `mpirun` in blueCFD-Core 2.3-1](#uninstalling-ms-mpi-71-did-not-solve-problem-with-mpirun-in-bluecfd-core-23-1)


**Side note regarding solution #1**: Many thanks to Anh Vo from the MS-MPI team
who gave us feedback on this and reported that the issue was related to the
lookup mechanism in Windows, as detailed
[here](https://msdn.microsoft.com/en-us/library/windows/desktop/ms682586(v=vs.85).aspx).


### Uninstalling MS-MPI 7.1 did not solve problem with `mpirun` in blueCFD-Core 2.3-1

**Reason**: <br>
Unfortunately sometimes the MS-MPI uninstallers area unable to fully remove all of their DLL files.

**Solution**: <br>
First, ensure that the problematic DLL files are located where the installer left them. Do this by running the following command in the MSys terminal for blueCFD-Core 2.3-1:

```
where msmpi.dll
```

which should give something like this:

```
C:\Program Files (x86)\blueCFD-Core-2.3\ThirdParty-2.3\platforms\linuxmingw-w64\msmpi-2012\bin\msmpi.dll
C:\Windows\System32\msmpi.dll
C:\Program Files (x86)\blueCFD-Core-2.3\ThirdParty-2.3\platforms\linuxmingw-w64\msmpi-2012\lib\msmpi.dll
```

If this is what you're seeing, then you will need to rename two files at the folder `C:\Windows\System32`:

  * `msmpi.dll` to `msmpi.dll.bak`
  * `msmpires.dll` to `msmpires.dll.bak`

It's advisable to rename the files through Windows Explorer, so that it asks you about whether the files should be renamed with administrative powers.

This should solve the problem.


### Problems running tutorials that use `codeStream` and/or problems building source code

**Symptom**:

  1. If you try to build your own source code and get an error like this:

     ```
     The command "C:\Program" is either misspelled or could not be found.

     C:\Program Files\blueCFD-Core-2016\msys64\mingw64\bin\windres.exe: preprocessing failed.

     Make/mingw_w64GccDPInt32Opt/version_of_build.rc.dep:4: the rule for target "Make/mingw_w64GccDPInt32Opt/version_of_build.o" failed.

     make: *** [Make/mingw_w64GccDPInt32Opt/version_of_build.o] error 1
     ```

  2. Or if you try running a tutorial case that uses the `codeStream` feature - such as
     `basic/potentialFoam/cylinder` - and it gives an error message like the following
     inside the log file `log.blockMesh`:

     ```
     C:\PROGRA~1\BLUECF~1\ofuser-of4\run\tutorials\basic\potentialFoam\cylinder>sh.exe -c "wmake -s libso C:/PROGRA~1/BLUECF~1/ofuser-of4/run/tutorials/basic/potentialFoam/cylinder/dynamicCode/_1c19e29ae18c779aa836a14631d6419f303e3d9d"
     wmakeLnInclude: linking include files to ./lnInclude
     Making dependency list for source file codeStreamTemplate.C
     'C:\Program' is not recognized as an internal or external command,
     operable program or batch file.
     C:\Program Files\blueCFD-Core-2016\msys64\mingw64\bin\windres.exe: preprocessing failed.
     Make/mingw_w64GccDPInt32Opt/version_of_build.rc.dep:4: recipe for target 'Make/mingw_w64GccDPInt32Opt/version_of_build.o' failed
     make: *** [Make/mingw_w64GccDPInt32Opt/version_of_build.o] Error 1
     ```

Then this means that the problem is associated with the path having spaces in
its name, specifically `C:\Program Files\blueCFD-Core-2016`.


**Solution**: There two possible solutions:

  1. The simplest is to follow the instructions given on our wiki:
  [Quick notes on how to update build](https://github.com/blueCFD/Core/wiki/Quick-notes-on-how-to-update-build),
  section [Setting up the work environment](https://github.com/blueCFD/Core/wiki/Quick-notes-on-how-to-update-build#setting-up-the-work-environment)
  
  2. Or reinstall blueCFD-Core at a location that has no spaces in its name,
  for example: `C:\blueCFD`


### Having other problems with custom source code

**Symptom**: If you try to build a custom solver or library, based on either
code from blueCFD-Core or OpenFOAM on Linux and it doesn't work within
blueCFD-Core's MSys2 shell environment.

**Solution**: Read the instructions given on the wiki:
[Loose notes on building custom code](https://github.com/blueCFD/Core/wiki/Loose-notes-on-building-custom-code).


### Silent installation options

As reported/requested in [issue #33](https://github.com/blueCFD/Core/issues/33),
instructions are available in the wiki page
[Command line installation options for blueCFD Core installers](https://github.com/blueCFD/Core/wiki/Command-line-installation-options-for-blueCFD-Core-installers).

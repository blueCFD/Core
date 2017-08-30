---
layout: faq
title: Problems running tutorials that use <code>codeStream</code> and/or problems building source code
---

## Symptom

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


## Solution

There two possible solutions:

  1. The simplest is to follow the instructions given on our wiki:
  [Quick notes on how to update build](https://github.com/blueCFD/Core/wiki/Quick-notes-on-how-to-update-build),
  section [Setting up the work environment](https://github.com/blueCFD/Core/wiki/Quick-notes-on-how-to-update-build#setting-up-the-work-environment)
  
  2. Or reinstall blueCFD-Core at a location that has no spaces in its name,
  for example: `C:\blueCFD`

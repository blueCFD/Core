---
layout: page
title: Frequently Asked Questions
---

List of questions:

  * [`mpirun` no longer works in blueCFD-Core 2.3-1, after installing blueCFD-Core 2016-1](#mpirun-no-longer-works-in-bluecfd-core-23-1-after-installing-bluecfd-core-2016-1)

----

### `mpirun` no longer works in blueCFD-Core 2.3-1, after installing blueCFD-Core 2016-1

**Reason**: <br>
The MS-MPI 7.1 library that is installed by default into Windows with the blueCFD-Core 2016 installer, is in conflict with the MS-MPI 2012 that blueCFD-Core 2.3-1 uses by default.


**Solution**: <br>
There are 3 possible solutions:

  1. The simplest is to uninstall MS-MPI 7.1 from Windows, through the Windows Uninstall interface.

      * Installing MS-MPI 7.1 is only needed to get the initial configurations up and running, so that blueCFD-Core 2016 could use the local installation of MS-MPI 7.1. Therefore, uninstalling it will make both versions work independently just fine.

      * Nonetheless, in order to use multiple machines in parallel for cooperative runs, MS-MPI 7.1 must be installed in Windows.

  2. Change the default MPI option in blueCFD-Core 2.3-1 to Open-MPI, although this means that users must use `foamJob` and not `mpirun` directly.

      * This can be done by going to Windows Start Menu -> blueCFD-Core 2.3 -> Settings -> MPI.

  3. A patch installer for blueCFD-Core 2.3-1 that provides support for MS-MPI 7.1 can be created by blueCAPE.

      * If you need this, please use the [Issue tracker](https://github.com/blueCFD/Core/issues) or use the [Contact form](http://bluecfd.com/contact).


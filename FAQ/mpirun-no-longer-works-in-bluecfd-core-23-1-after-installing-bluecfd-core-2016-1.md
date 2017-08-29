---
layout: faq
title: <code>mpirun</code> no longer works in blueCFD-Core 2.3-1, after installing blueCFD-Core 2016-1
---

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
        with `mpirun` in blueCFD-Core 2.3-1](uninstalling-ms-mpi-71-did-not-solve-problem-with-mpirun-in-bluecfd-core-23-1)


**Side note regarding solution #1**: Many thanks to Anh Vo from the MS-MPI team
who gave us feedback on this and reported that the issue was related to the
lookup mechanism in Windows, as detailed
[here](https://msdn.microsoft.com/en-us/library/windows/desktop/ms682586(v=vs.85).aspx).

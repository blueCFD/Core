---
layout: faq
title: Having problems with application crashing after adding an external application
---

## Symptom

This type of situation was not meant to occur anymore as of blueCFD-Core 2.3-1,
but this symptom could occur after adding another application to the `AddOns`
folder, when following the instructions given in page
[How to install additional software, such as Gmsh](../how-to-install-additional-software-such-as-gmsh).

The symptom usually is to have an application crash right after launching it,
when running the command from the blueCFD-Core (MSys2) terminal. Possibly it
might give a dialogue window with the error message stating that something is
wrong with the loaded DLL.


## Reason

The reason is why there is a page titled [_DLL Hell_](https://en.wikipedia.org/wiki/DLL_Hell)
own Wikipedia.

The problem arises when there are two or more DLL files with the same exact
name that are available on the search path, namely inside in one of the paths
listed in the environment variable `PATH`.


## Solution

 1. First we should diagnose which DLL file is having the problem and where it
    is located, as documented in subsection [Diagnosis](#diagnosis).

 2. We try to remove or isolate the location of that DLL file, as documented in
    subsections:

    * [Removing from the search path](#removing-from-the-search-path)
    * [Isolation](#isolation)


### Diagnosis

First we need to diagnose which library is failing, if there is no indication
of which exact library is failing.

Therefore, start a new blueCFD-Core (or MSys2) terminal and run the following
command:

```
objdump -x $(which application) | grep "DLL Name"
```

But replace the name `application` with the application name which fails to
launch. For example, if we want to check if blockMesh is loading with the
correct libraries:

```
objdump -x $(which blockMesh) | grep "DLL Name"
```

Which should give a list similar to the following:

```
        DLL Name: KERNEL32.dll
        DLL Name: msvcrt.dll
        DLL Name: libgcc_s_seh-1.dll
        DLL Name: libstdc++-6.dll
        DLL Name: libblockMesh.dll
        DLL Name: libdynamicMesh.dll
        DLL Name: libmeshTools.dll
        DLL Name: libOpenFOAM.dll
```

From this list, the entries `libgcc_s_seh-1.dll` and `libstdc++-6.dll` are the
two most likely suspects of there being a conflict with a second installation
of the GCC stack.

Next, we will check where the library `libstdc++-6.dll` can be found on the
current path list, by using two commands:

```
which libstdc++-6.dll
where libstdc++-6.dll
```

 1. The first one should give something like this:

    ```
    /mingw64/bin/libstdc++-6.dll
    ```

    Which is the correct location.

 2. The second one reveals a reason for some concern:

    ```
    C:\Program Files\blueCFD-Core-2016\msys64\mingw64\bin\libstdc++-6.dll
    C:\Program Files (x86)\Geany\bin\libstdc++-6.dll
    C:\Program Files\blueCFD-Core-2016\AddOns\gnuplot\bin\libstdc++-6.dll
    ```

    There are 3 different files that can be found on the search path!

This example output should not be a problem when running OpenFOAM applications
such as `blockMesh`, because the path is the desired one. However, the two
other paths refer to two other applications that were added as `AddOns`,
following the instructions given in the FAQ entries:

 * [How to install additional software, such as Gmsh](how-to-install-additional-software-such-as-gmsh)
 * [How to install and/or use another version of ParaView](how-to-use-another-version-of-ParaView).

Details about those two otehr paths:
 
 * _Gnuplot_ is installed automatically with blueCFD-Core by default and was
  confirmed that it was working properly when installed this way.
 * But _Geany_ was added manually after the installation.

The main reason why both _Gnuplot_ and _Geany_ work without problems is
because the respective DLL files are inside the same folder as the application
itself, as shown when the `which` command is used:

```
# which gnuplot
/home/ofuser/AddOns/gnuplot/bin/gnuplot

# which geany
/c/PROGRA~2/Geany/bin/geany
```

Therefore everything is OK in this case. But lets check the more probable point
of failure: with which DLL files does the main `libOpenFOAM.dll` library link
to? To check this, run:

```
objdump -x $(which libOpenFOAM.dll) | grep "DLL Name"
```

Which should give this:

```
        DLL Name: libsystre-0.dll
        DLL Name: zlib1.dll
        DLL Name: ADVAPI32.dll
        DLL Name: KERNEL32.dll
        DLL Name: msvcrt.dll
        DLL Name: libgcc_s_seh-1.dll
        DLL Name: libstdc++-6.dll
        DLL Name: libPstream.dll
```

Among which the `zlib1.dll` file is most likely to have duplicates, so lets
check:

```
where zlib1.dll
```

Which may give something like this:

```
C:\Program Files\blueCFD-Core-2016\msys64\mingw64\bin\zlib1.dll
C:\Program Files (x86)\Geany\bin\zlib1.dll
C:\Program Files\blueCFD-Core-2016\AddOns\gnuplot\bin\zlib1.dll
C:\Program Files\blueCFD-Core-2016\AddOns\ParaView\bin\zlib1.dll
```

As already described for the other example, the last 3 are all in the same
folder as the respective applications, therefore it should not affect the
applications built with blueCFD-Core's software stack and port of OpenFOAM for
Windows.

However, if for some strange reason the two first entries were swaped around:

```
C:\Program Files (x86)\Geany\bin\zlib1.dll
C:\Program Files\blueCFD-Core-2016\msys64\mingw64\bin\zlib1.dll
C:\Program Files\blueCFD-Core-2016\AddOns\gnuplot\bin\zlib1.dll
C:\Program Files\blueCFD-Core-2016\AddOns\ParaView\bin\zlib1.dll
```

Then this could lead to `blockMesh` and `icoFoam` to not work properly.

With blueCFD-Core 2.3-1, 2016-1 and newer versions, this should never happen.
However, if it does, then the strategies given in the next subsections may help
fix the problem:

* [Removing from the search path](#removing-from-the-search-path)
* [Isolation](#isolation)


#### Side note for searching DLL files

There are situations where the MSys/MSys2 terminal will not launch properly or
load the OpenFOAM shell environment, due precisely to DLL conflicts. In such
scenarios, it might be necessary to launch a _Windows Command Line_ by running:

```
cmd
```

In this mode, it should still possible to search for DLLs with either one of
the following commands (examples are for the DLL file `zlib1.dll`):

```
where zlib1.dll

for %i in (zlib1.dll) do @echo. %~$PATH:i
```

The last command will only return the first occurrence.


### Removing from the search path

 1. Start the blueCFD-Core terminal and if it is not activated automatically,
    load the environment for desired OpenFOAM version.

 2. Go into the folder where shell scripts can be placed for automatically
    being loaded in, either by running the following command or going there
    manually:

    ```
    cd $WM_PROJECT_DIR/etc/config.d
    ```

 3. Create a new file with the file extension `.sh` and the name for which the
    isolation is being created, such as `powershell.sh`, by running:

    ```
    notepad2 powershell.sh
    ```

 4. Then add the following line into the opened file (_Notepad2_ should have
    appeared):

    ```
    cleaned=`$foamClean "$PATH" "/c/Windows/System32/WindowsPowerShell/v1.0/"` && PATH="$cleaned"
    ```

     * The path `/c/Windows/System32/WindowsPowerShell/v1.0/` is an example of
       a path to be removed from the `PATH` variable.

 5. Save the file and close the _Notepad2_ window.

 6. Start a new terminal and everything should now work properly.


### Isolation

It is detailed in the FAQ entry [How to install additional software, such as Gmsh](../how-to-install-additional-software-such-as-gmsh),
that a shell script file is meant to be created at `~/bashrc.d`, which means
that in that script an environment variable and a function can be defined
instead for launching the application. For example, using `gmsh`, we can
replace this entry:

```
export PATH=$PATH:$HOME/AddOns/gmsh
```

To this:

```
export GMSH_PATH=$HOME/AddOns/gmsh

# function for calling gmsh indirectly
gmsh()
{
  (
    if [ -n "$WM_PROJECT_DIR" ]
    then
      . $WM_PROJECT_DIR/etc/config.sh/unset
    fi

    export PATH=$GMSH_PATH:$PATH
    exec $(which gmsh) $@
  )
}
```

Where:

 * `GMSH_PATH` is the path to where the `gmsh.exe` binary is located.
 * `gmsh()` is a shell function that we are defining here.
 * The parenthesis block means that the commands are executed in a new shell
   environment and not in the current one, which allows for unloading the
   current OpenFOAM shell environment and settings `gmsh`'s as the default path
   to be used for looking for it.

Start a new terminal after editing the file and it should work as intended!

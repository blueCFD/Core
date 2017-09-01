---
layout: faq
title: Having other problems with custom source code
---

## Symptom

If you try to build a custom solver or library, based on either
code from blueCFD-Core or OpenFOAM on Linux and it doesn't work within
blueCFD-Core's MSys2 shell environment.

Or if you are trying to use `gcc` or `g++` from the shell or from within
another `Makefile`.

In both situations, an error message similar to the following may occur:

```
C:\Program Files\blueCFD-Core-2016\msys64\mingw64\bin/ld.exe: cannot find C:/Program: No such file or directory
C:\Program Files\blueCFD-Core-2016\msys64\mingw64\bin/ld.exe: cannot find Files/blueCFD-Core-2016/msys64/mingw64/bin/../lib/gcc/x86_64-w64-mingw32/5.3.0/../../../../x86_64-w64-mingw32/lib/../lib/default-manifest.o: No such file or directory
collect2.exe: error: ld returned 1 exit status
```


## Solution

For both symptoms, read the instructions given on the following wiki page:
[Loose notes on building custom code](https://github.com/blueCFD/Core/wiki/Loose-notes-on-building-custom-code).

In that wiki page:

 * The section _Setting up the work environment_ assists using
   an _substitute_ drive letter, which will then effectively shorten the path
   to the blueCFD-Core path.

   The current default is that it will create the new drive letter `X:` which
   is based on the parent folder of the blueCFD-Core
   installation.

   * For example, the path `C:\Program Files\blueCFD-Core-2016` will
     become also available as `X:\blueCFD-Core-2016`.

   This will solve the majority of the problems.

 * However, if this first solution isn't what you are looking for and if you
   are still using blueCFD-Core 2016-1, then you will need to either:

    * Upgrade to blueCFD-Core 2016-2;
    * Or follow the instructions given in section _Updating the build of
      OpenFOAM 4.x in blueCFD-Core 2016_ of the wiki page indicated at the
      start of this [Solution](#solution).

   Both which will provide the necessary `makeReinterpretExePath` script for
   the instructions given below in section
   [Using `makeReinterpretExePath`](using-makereinterpretexepath).



### Using `makeReinterpretExePath`

This is necessary when using `gcc` or `g++` from the shell (command line) or
when using these applications when building other software.

**Note:** If you are using blueCFD-Core 2016-1, don't forget to follow the
instructions given in the previous section [Solution](#solution).

For running applications such as `gcc`, then you need to create a file that
defines the aliases for the applications to be used, because it's necessary to
use the script `makeReinterpretExePath`, which will reinterpret the path in a
way that spaces are handled correctly.

For example, by running:

```
$WM_DIR/scripts/makeReinterpretExePath gcc
```

will give said path in a space-compatible format.

For example, to use it in practice:

```
$($WM_DIR/scripts/makeReinterpretExePath gcc) code.c -o code.exe
```

Where the `$(...)` part if for using the output from command inside as a
command itself. Therefore, this example is what needs to be done for changing
any script commands or in `Makefile` files that have hard-coded the option to
use `gcc` or `g++` directly.

However, if the `Makefile` file(s) rely on the `CC` and `CXX` environment
variables, then run the following commands before building said software (not
needed for OpenFOAM itself):

```
export CC=$($WM_DIR/scripts/makeReinterpretExePath gcc)
export CXX=$($WM_DIR/scripts/makeReinterpretExePath g++)
```


As for running the applications directly from the command line - and in case
you haven't installed blueCFD-Core 2016-2 or newer - the proposed steps for
deploying the definition of aliases manually is as follows:

 1. Start the blueCFD-Core terminal and activate the desired OpenFOAM
    environment, if not done automatically.

 2. Run the following commands:

    ```
    foam
    cd etc/config.d
    notepad2 gccAliases.sh
    ```

 3. A window for _Notepad2_ should have opened for the desired file to be
    edited. If it's empty, then place inside the following code:

    ```
    if [ -e "${WM_DIR}/scripts/makeReinterpretExePath" ]
    then

      alias gcc=$($WM_DIR/scripts/makeReinterpretExePath gcc)
      alias g++=$($WM_DIR/scripts/makeReinterpretExePath g++)
      alias ld=$($WM_DIR/scripts/makeReinterpretExePath ld)
      alias ldd=$($WM_DIR/scripts/makeReinterpretExePath ldd)
      alias objdump=$($WM_DIR/scripts/makeReinterpretExePath objdump)

    fi
    ```

 4. Save the file and close the _Notepad2_ window.

 5. Run the following commands:

    ```
    source gccAliases.sh
    alias gcc
    ```

    where the first one will load the aliases and the second will show what was
    defined for the first alias, which should show something like this:

    ```
    alias gcc='C:/PROGRA~1/BLUECF~1/msys64/mingw64/bin/gcc.exe'
    ```

 6. From now on, whenever you start a new blueCFD-Core terminal and use the
    current OpenFOAM environment/version, it should automatically load these
    aliases.

Going back to a previous example, this means that from now it's possible to
simply run from the command line:

```
gcc code.c -o code.exe
```

Or in the `Makefile` use `$(CC)` instead of `gcc`.

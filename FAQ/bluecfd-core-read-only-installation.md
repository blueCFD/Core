---
layout: faq
title: Read-only installation of blueCFD-Core
---


## Symptom

If the installation of blueCFD-Core is done (for example) at
`C:\Program Files\blueCFD-Core-2016` and if the option *Enable write
permissions in user-related folders within the installation* is not used during
installation, that will lead to the complete installation to be set to
read-only state, resulting in the need to use a less conventional way to use
blueCFD-Core.


## Solution

This depends on which version of blueCFD-Core is being used, for which the
following sections were written:

  * For [blueCFD-Core 2016-1](bluecfd-core-2016-1)
  * For [blueCFD-Core 2016-2 and newer](bluecfd-core-2016-2-and-newer)


### blueCFD-Core 2016-1

If blueCFD-Core 2016-1 is being used, then this means that the installation
will work for the most part, but it's left to the user the need to manually run
the cases from the user's own folders, instead of running it from inside
blueCFD-Core's folders.

More specifically, if the user starts a new blueCFD-Core terminal and run the
following commands:

```
mkdir $FOAM_RUN
cd $FOAM_RUN
cp -r $FOAM_TUTORIALS .
```

(These commands related to the introductory section of
[chapter 2 on the OpenFOAM User Guide](https://cfd.direct/openfoam/user-guide/v4-tutorials/#x4-30002).)

This will not work when it's installed in read-only mode, because the folder
defined in the variable `FOAM_RUN` is the path
`C:\Program Files\blueCFD-Core-2016\ofuser-of4\run`, which will also be set to
read-only.

This means that in this scenario, the user is expected to instead navigate in
Windows Explorer into their own `Documents` folder, create a new folder,
right-click on it and start a new blueCFD-Core terminal there. Only then will
the following command work as intended:

```
cp -r $FOAM_TUTORIALS .
```


### blueCFD-Core 2016-2 and newer

Starting with blueCFD-Core 2016-2, a mechanism has been built into the
blueCFD-Core terminal start-up sequence to copy and set-up the terminal
environment to work from within the user's own folder, which is defined by
Windows' environment variable `USERPROFILE`.

This means that everything in blueCFD-Core should work as expected, namely the
following commands should work as intended:

```
mkdir $FOAM_RUN
cd $FOAM_RUN
cp -r $FOAM_TUTORIALS .
```

(These commands are related to the introductory section of
[chapter 2 on the OpenFOAM User Guide](https://cfd.direct/openfoam/user-guide/v4-tutorials/#x4-30002).)

The actual location of folder the `FOAM_RUN` variable points to and where the
user (home) folder is now located, can be discovered by running the following
commands:

```
cd
echo $FOAM_RUN
explorer .
```

This should open Windows Explorer, in the user's folder, for example at:

```
C:\Users\John Smith\blueCFD-Core-2016\ofuser\
```

Where `C:\Users\John Smith\blueCFD-Core-2016\` is the folder that
blueCFD-Core's read-only installation mechanism will use.


----

More specific details on how this feature was implemented are provided in the
report associated to the development feature, namely in
[Issue #34](https://github.com/blueCFD/Core/issues/34).

---
layout: post
title: blueCFD-Core 2020-1 (64-bit) Installer now available
---

Today we release blueCFD-Core 2020-1, which provides OpenFOAM 8 as a native
build for Windows, with OpenFOAM binaries acting as normal Windows applications.

The installer for blueCFD-Core 2020-1 is installed separately from 
blueCFD-Core 2017, therefore both installations can coexist.

Released elements are:

  * [blueCFD-Core-2020-1-win64-setup.exe](https://github.com/blueCFD/Core/releases/download/blueCFD-Core-2020-1/blueCFD-Core-2020-1-win64-setup.exe)
      * blueCFD-Core 2020-1 provides MSys2, OpenFOAM 8 and ParaView 5.6.2.
      * 830 MiB installer, SHA1: `31c78a935309ece053035e4d2a81ebac5f766c43`

  * The [Release Notes for blueCFD-Core 2020-1]({{ site.baseurl }}/ReleaseNotes/bluecfd-core-2020-1)
    page has been created for this release.

  * The [Project Management page](https://github.com/orgs/blueCFD/projects/1) is
    public, allowing people to know how things are coming along and what are the
    upcoming objectives for 2021.

  * A wiki is available for software developers and system installers:
    [blueCFD-Core wiki](https://github.com/blueCFD/Core/wiki)

The source code provided for the port of OpenFOAM 8 has been
[released here](https://github.com/blueCFD/OpenFOAM-dev/tree/blueCFD-Core-8),
as well as of [ThirdParty-8 here](https://github.com/blueCFD/ThirdParty-dev/tree/blueCFD-Core-8).

As mentioned above, the development infrastructure is based on
[MSys2](https://msys2.github.io/) and instructions for developing in a clean
installation of MSys2 will be provided at [openfoamwiki.net](http://openfoamwiki.net),
as soon as possible.

For a complete list of bug reports, issues and wishes that have been submitted
to the blueCFD-Core project, see the
[Issue Tracker page](https://github.com/blueCFD/Core/issues). For example, a
complete list of issues and tasks that were conducted for developping
blueCFD-Core 2020-1, are available there:
[milestone blueCFD-Core 2020-1](https://github.com/blueCFD/Core/milestone/6?closed=1).

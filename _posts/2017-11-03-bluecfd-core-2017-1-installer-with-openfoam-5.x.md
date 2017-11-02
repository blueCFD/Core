---
layout: post
title: blueCFD-Core 2017-1 (64-bit) Installer now available
---

Today we release blueCFD-Core 2017-1, which provides OpenFOAM 5.x as a native
build with OpenFOAM binaries acting as normal Windows applications. It does not
require Windows WSL nor Docker to be installed in order to function.

The installer for blueCFD-Core 2017-1 is installed separately from 
blueCFD-Core 2016, therefore both installations can coexist.

Released elements are:

  * [blueCFD-Core-2017-1-win64-setup.exe](https://github.com/blueCFD/Core/releases/download/blueCFD-Core-2017-1/blueCFD-Core-2017-1-win64-setup.exe)
      * blueCFD-Core 2017-1 provides MSys2, OpenFOAM 5.x and ParaView 5.4.1.
      * 725 MiB installer, SHA1: `---`

  * The [Release Notes for blueCFD-Core 2017-1]({{ site.baseurl }}/ReleaseNotes/bluecfd-core-2017-1)
    page has been created for this release.

  * The [Frequently Asked Questions]({{ site.baseurl }}/FAQ) page is being
    revised for this release and will be completed as soon as possible.

  * A [Project Management page](https://github.com/orgs/blueCFD/projects/1) for
    organization/project members is available to list the tasks that are in
    development for the next release of blueCFD-Core, for easier coordination
    with anyone who wants to contribute and/or stay up-to-date on what is being
    done.

  * A wiki is available for software developers and system installers, which
    will be updated in the next few weeks:
    [blueCFD-Core wiki](https://github.com/blueCFD/Core/wiki)

The source code provided for the port of OpenFOAM 5.x has been
[released here](https://github.com/blueCFD/OpenFOAM-dev/tree/blueCFD-Core-5.x),
as well as of [ThirdParty-5.x here](https://github.com/blueCFD/ThirdParty-dev/tree/blueCFD-Core-5.x).

As mentioned above, the development infrastructure is based on
[MSys2](https://msys2.github.io/) and instructions for developing in a clean
installation of MSys2 will be provided at [openfoamwiki.net](http://openfoamwiki.net),
as soon as possible.

For a complete list of bug reports, issues and wishes that have been submitted
to the blueCFD-Core project, see the
[Issue Tracker page](https://github.com/blueCFD/Core/issues). For example, a
complete list of issues and tasks that were conducted for developping
blueCFD-Core 2017-1, are available there:
[milestone blueCFD-Core 2017-1](https://github.com/blueCFD/Core/milestone/3?closed=1).

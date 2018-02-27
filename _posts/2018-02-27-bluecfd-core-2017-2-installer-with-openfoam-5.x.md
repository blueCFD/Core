---
layout: post
title: blueCFD-Core 2017-2 (64-bit) Installer now available
---

Today we release the culmination of all of the bug fixes done since the last post,
namely [replying and fixing bug reports](https://github.com/blueCFD/Core/issues?q=is%3Aissue+is%3Aclosed),
synchronizing the
[blueCFD-Core-5.x branch with OpenFOAM-5.x](https://github.com/blueCFD/OpenFOAM-dev/tree/blueCFD-Core-5.x)
and [writing FAQ entries]({{ site.baseurl }}/FAQ/).

blueCFD-Core 2017-2 is a bug fix release, along with a
synchronization with all of the bug fixes available in
[OpenFOAM 5.x](https://github.com/OpenFOAM/OpenFOAM-5.x/). A few fixes and
additions were made for the third-party software (see the 
[release notes]({{ site.baseurl }}/ReleaseNotes/bluecfd-core-2017-2)).

Released elements are:

  * [blueCFD-Core-2017-2-win64-setup.exe](https://github.com/blueCFD/Core/releases/download/blueCFD-Core-2017-2/blueCFD-Core-2017-2-win64-setup.exe)
      * blueCFD-Core 2017-2 provides MSys2, OpenFOAM 5.x and ParaView 5.4.1.
      * 790 MiB installer, SHA1: `4df0b7a38eea5363b66e5f7d0d94f50714d59f1a`

  * The [Release Notes for blueCFD-Core 2017-2]({{ site.baseurl }}/ReleaseNotes/bluecfd-core-2017-2)
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

  * The source code provided for the port of OpenFOAM 5.x has been
[updated here](https://github.com/blueCFD/OpenFOAM-dev/tree/blueCFD-Core-5.x).

At the time of this release, there were several tasks still open, as it can be 
seen on the [milestone blueCFD-Core 2017-2](https://github.com/blueCFD/Core/milestone/4)
page, which will be addressed as soon as possible, in association with this
milestone.

As mentioned above, the development infrastructure is based on
[MSys2](https://msys2.github.io/) and instructions for developing in a clean
installation of MSys2 will be provided at [openfoamwiki.net](http://openfoamwiki.net),
once we are able to sort out the tasks left for this
[milestone](https://github.com/blueCFD/Core/milestone/4).

For a complete list of bug reports, issues and wishes that have been submitted
to the blueCFD-Core project, see the
[Issue Tracker page](https://github.com/blueCFD/Core/issues).

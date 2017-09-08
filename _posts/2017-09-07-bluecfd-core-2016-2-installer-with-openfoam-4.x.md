---
layout: post
title: blueCFD-Core 2016-2 (64-bit) Installer now available
---

Today we release the culmination of all of the bug fixes done since the last post,
namely [replying and fixing bug reports](https://github.com/blueCFD/Core/issues?q=is%3Aissue+is%3Aclosed),
synchronizing the
[blueCFD-Core-4.x branch with OpenFOAM-4.x](https://github.com/blueCFD/OpenFOAM-dev/tree/blueCFD-Core-4.x)
and [writing FAQ entries]({{ site.baseurl }}/FAQ/),
as it can be seen from the list of 24 issues that were solved for
[milestone blueCFD-Core 2016-2](https://github.com/blueCFD/Core/milestone/1?closed=1).

This means that blueCFD-Core 2016-2 is a bug fix release, along with a
synchronization with all of the bug fixes available in
[OpenFOAM 4.x](https://github.com/OpenFOAM/OpenFOAM-4.x/). No new software has
been added.

As for OpenFOAM 5, this will be released soon in blueCFD-Core 2017-1.

Released elements are:

  * [blueCFD-Core-2016-2-win64-setup.exe](https://github.com/blueCFD/Core/releases/download/blueCFD-Core-2016-2/blueCFD-Core-2016-2-win64-setup.exe)
      * blueCFD-Core 2016-2 provides MSys2, OpenFOAM 4.x and ParaView 5.1.2.
      * 726 MiB installer, SHA1: `6925346856d62124971316f5886b18977b49d266`

  * The [Release Notes for blueCFD-Core 2016-2]({{ site.baseurl }}/ReleaseNotes/bluecfd-core-2016-2)
    page has been created for this release.

  * The [Frequently Asked Questions]({{ site.baseurl }}/FAQ) page has been
    revised and several more entries have been added.

  * A [Project Management page](https://github.com/orgs/blueCFD/projects/1) is
    available to list the tasks that are in development for the next release of
    blueCFD-Core, for easier coordination with anyone who wants to contribute
    and/or stay up-to-date on what is being done. **Note:** At the moment,
    Github only supports organization/project members to see this page.

  * A wiki is available for software developers and system installers:
    [blueCFD-Core wiki](https://github.com/blueCFD/Core/wiki)

The source code provided for the port of OpenFOAM 4.x has been
[updated here](https://github.com/blueCFD/OpenFOAM-dev/tree/blueCFD-Core-4.x).

As mentioned above, the development infrastructure is based on
[MSys2](https://msys2.github.io/) and instructions for developing in a clean
installation of MSys2 will be provided at [openfoamwiki.net](http://openfoamwiki.net),
after we have finalized the release of blueCFD-Core 2017-1.

For a complete list of bug reports, issues and wishes that have been submitted
to the blueCFD-Core project, see the
[Issue Tracker page](https://github.com/blueCFD/Core/issues).

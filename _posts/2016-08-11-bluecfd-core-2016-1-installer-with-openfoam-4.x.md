---
layout: post
title: blueCFD-Core 2016-1 (64-bit) Installer now available
---

Following the [initial source code release]({{ site.baseurl }}{{page.previous.url}}) a week ago,
the very first installer for the next generation of blueCFD-Core is available
as of today!

Released elements are:

  * [blueCFD-Core-2016-1-win64-setup.exe](https://github.com/blueCFD/Core/releases/download/blueCFD-Core-2016-1/blueCFD-Core-2016-1-win64-setup.exe)
      * blueCFD-Core 2016-1 provides MSys2, OpenFOAM 4.x and ParaView 5.1.2.
      * 710 MiB installer, SHA1: `4ba23f6757ccdfd041f2e2627daee7b947f41195`

  * The [Release Notes]({{ site.baseurl }}/ReleaseNotes/bluecfd-core-2016-1#software-provided-with-installers)
   page has been updated for this release.

  * The [About]({{ site.baseurl }}/About) page has been added, which details
  Mission Statement, Vision and History of this project.

The source code provided for the port of OpenFOAM 4.x has been
[updated here](https://github.com/blueCFD/OpenFOAM-dev/tree/blueCFD-Core-4.x).

As mentioned above, the development infrastructure is based on
[MSys2](https://msys2.github.io/) and instructions for developing in a clean
installation of MSys2 will be provided at [openfoamwiki.net](http://openfoamwiki.net),
after we have finalized the release of blueCFD-Core 2016-1.

Among the list of pending items to be released include:

  * Bringing the documentation from blueCFD-Core 2.3-1 to the
  [User Guides]({{ site.baseurl }}/UserGuide) page
  * Updated [FAQ]({{ site.baseurl }}/FAQ) page
  * Port of the latest OpenFOAM 3.0.x
  * Port of the latest OpenFOAM 2.3.x
  * Port of foam-extend, within the same infrastructure
  * swak4Foam, PyFoam and other community projects

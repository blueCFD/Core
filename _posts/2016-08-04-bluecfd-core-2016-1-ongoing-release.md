---
layout: post
title: blueCFD-Core 2016-1 in ongoing release mode
---

The next generation of blueCFD-Core has entered in the release mode of the
newest version: blueCFD-Core 2016-1

The releases made today are as follows:

  * New project website: http://bluecfd.github.io/Core/
  
  * Released the source code modifications for OpenFOAM 4.x at the following
  repository branches:

    * [blueCFD-Core-4.x branch, indexed to OpenFOAM-4.x](https://github.com/blueCFD/OpenFOAM-dev/tree/blueCFD-Core-4.x)

    * [blueCFD-Core-4.x branch, indexed to ThirdParty-4.x](https://github.com/blueCFD/ThirdParty-dev/tree/blueCFD-Core-4.x)


The source code provided has most of the porting changes needed for making
OpenFOAM 4.x build and run natively on Windows. What's missing is the development
infrastructure, which will be released publicly and for free in the binary
release of blueCFD-Core 2016-1.

Said development infrastructure is based on [MSys2](https://msys2.github.io/)
and instructions for developing in a clean installation of MSys2 will be
provided at [openfoamwiki.net](http://openfoamwiki.net), after we've finalized
the release of blueCFD-Core 2016-1.

The release source code has been directly forked from the [OpenFOAM-dev](https://github.com/OpenFOAM/OpenFOAM-dev)
and [ThirdParty-dev](https://github.com/OpenFOAM/ThirdParty-dev) repositories,
because the objective of this new generation of blueCFD-Core is to keep track
of the latest developments of OpenFOAM, enabling Windows users to also keep up
with it.

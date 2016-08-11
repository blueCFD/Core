---
layout: page
title: The blueCFD-Core project
---

  * [Mission Statement](#mission-statement)
  * [Vision](#vision)
  * [History](#history)

<hr>


# Mission Statement

  1. The primary objective of the blueCFD-Core project is to bring OpenFOAM
  technology to run natively in Microsoft Windows, as an open source
  collaboration with the community that uses this technology.

  2. Contributions and collaboration are very much welcome and are open to
  anyone, so that the community that uses OpenFOAM technology can consolidate
  the efforts of porting software to Windows.

  3. Any source code changes will be made public at the
  [blueCFD project page](https://github.com/blueCFD/), with associated
  documentation provided at or linked from the
  [User Guides]({{ site.baseurl }}/UserGuide) page.

  4. Changes made to the project's supported ports, will be submitted to the
  respective upstream project.

  5. Documentation will be made as open as possible as well, having the primary
  target for documentation at [openfoamwiki.net](https://openfoamwiki.net),
  while using [User Guides]({{ site.baseurl }}/UserGuide) acting as an
  auxiliary documentation location for the provided ports.


# Vision

Beyond the mission statement, this project aims to achieve the following goals:

  1. To be able to compile from source code and install OpenFOAM technology on
  Microsoft Windows as easily as done on Linux Distributions. This is primarily
  done by relying on MSys2 to act as the development infrastructure, but the
  resulting binaries can be used independently from MSys2.

  2. To be able to have an easy way to install pre-built binaries, either
  through one-click installers or through MSys2 package manager.

  3. To make OpenFOAM technology on Windows as ubiquitous as on any other
  platform, just as if it were running on any Linux Distribution.

  4. To collaborate with the upstream projects for which porting efforts have
  been made, so that the efforts for the blueCFD-Core project are reduced to
  simple maintenance or even to eliminate the need for any additional porting
  efforts.

  5. To promote and embrace community efforts, as well as to respect original
  authorship and copyrights.

  6. To improve quality and performance.


# History

blueCFD® product/service (with a 50€ fee + 6€ shipping for DVD) was first
launched by blueCAPE in 11th of November of 2009. It was re-branded in
November 2013 to blueCFD-Core, as blueCAPE's offerings had expanded into more
products and services.

On the 15th of December 2011, the blueCFD-SingleCore project had been released,
with the objective to provide

blueCFD® is registered as a trade mark by blueCAPE Lda, since October 2012.

In November 2013, with blueCAPE's launch of blueCFD®-AIR, the original blueCFD
was re-branded to blueCFD®-Core.

On the 22nd of March 2016, blueCAPE released blueCFD-Core 2.3-1 freely to the
public. It was soon followed on the 4th of August 2016 with the release of
blueCFD-Core 2016-1, as new generation for this project.

blueCFD(-Core) was originally developed at blueCAPE in 2009 to bring and share
their own cross-compilations of OpenFOAM to the scientific and engineering community,
namely those who are bound to Microsoft's Windows Operating System. They had a
need for having OpenFOAM working in Windows and the tutorials for
cross-compiling OpenFOAM 1.4.1 and 1.5.0 in Linux for Windows already existed,
provided by [Symscape](http://www.symscape.com).

At the time of the first release made, Symscape had already launched their
OpenFlow product when we launched blueCFD, but since our builds are somewhat
different, we believed that some competition would also be healthy.

Originally, the same path was taken as Symscape's, namely to publish the
changes to OpenFOAM as public patches, but making them public and well
documented at [openfoamwiki.net](https://openfoamwiki.net). The entry point
for those wiki pages is the following wiki page:
[Tip Cross Compiling OpenFOAM in Linux For Windows with MinGW](http://openfoamwiki.net/index.php/Installation/Windows/Outdated/Tip_Cross_Compiling_OpenFOAM_in_Linux_For_Windows_with_MinGW)

As time passed by, more and more solutions were made available with various
degrees of support and price, where a list is maintained on the wiki page
[Windows at openfoamwiki.net](http://openfoamwiki.net/index.php/Windows).

In 2015, as blueCAPE had the confidence of that they had the most proefficient
work done on porting OpenFOAM to Windows, they made the decision to extend the
already existing public porting effort in the [blueCFD project at Github](https://github.com/blueCFD)
to its full extent. On August 2016, was finally made public and aims towards
consolidating everyone's efforts under a common project, as the next generation
of blueCFD-Core.


## Timeline

  * 11th of November 2009: blueCFD 1.6-1 Product/Service Released 

  * 17th of August 2010: blueCFD 1.7-1 Product/Service Released 

  * 15th of December 2011: blueCFD 2.0-1 Product/Service Released
      * This included the first release of the blueCFD-SingleCore project.

  * 27th of February 2012: blueCFD 2.0-2 and 2.1-1 Product/Service Released

  * 11th of February 2013: blueCFD 2.1-2 Product/Service Released 

  * 2nd of April 2014: blueCFD-Core 2.3-1 Product/Service Released

  * 22nd of March 2016: blueCAPE released blueCFD-Core 2.3-1 freely to the public.

  * 4th of August 2016: blueCAPE began the release of the next generation of
  blueCFD-Core as a publicly free and open source code project, including this
  [website](http://bluecfd.github.io/Core/).

*Note*: The majority of version numbers refer to the respective OpenFOAM version,
e.g. blueCFD 1.6 refers to OpenFOAM 1.6.



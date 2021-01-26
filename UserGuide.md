---
layout: page
title: User Guides
---

# In Construction

This page is still a work in progress. We are aiming to bring in the old
documentation we have from blueCFD-Core 2.3-1, but the objective is to contribute
as much as possible to the [openfoamwiki.net](https://openfoamwiki.net) website,
so that everyone can contribute.

**Reminder:** blueCFD-Core provides ports of OpenFOAM (the one from the
OpenFOAM Foundation) for running directly on Windows, therefore the [official
OpenFOAM Foundation User Guides](http://cfd.direct/openfoam/user-guide/) should
also work with our ports.

Table of content:
* [How to Install blueCFD-Core](#how-to-install-bluecfd-core)
* [Getting started with blueCFD-Core](#getting-started-with-bluecfd-core)
* [Instructions for source code developers](#instructions-for-source-code-developers)
* [Building community projects with blueCFD-Core](#building-community-projects-with-bluecfd-core)
* [Graphical User Interface (GUI)](#graphical-user-interface-gui)

# How to Install blueCFD-Core

A short video tutorial is available at
[blueCFD-Core: Install How-To @ YouTube](https://www.youtube.com/watch?v=nl7er2t-TnU)
for blueCFD-Core 2016-1 and is shown below as well:
<iframe width="560" height="315" src="https://www.youtube.com/embed/nl7er2t-TnU" frameborder="0" allowfullscreen></iframe>

**Notes**:

* The installation steps are very similar for blueCFD-Core 2017, therefore this
video is still representative.

* If you already have 2016-1 installed, you can update by running the
installer for 2016-2 and use the same installation steps. The installer should
inherit the installation settings on its own.

    * The same will happen if you installed blueCFD-Core 2017-1 first and want
      to install 2017-2 later on.


# Getting started with blueCFD-Core

A 40 minute video tutorial is available at
[blueCFD-Core: OpenFOAM® tutorial 1 How-To @ YouTube](https://www.youtube.com/watch?v=1Ti0yU1JdTQ)
and is shown below as well:
<iframe width="560" height="315" src="https://www.youtube.com/embed/1Ti0yU1JdTQ" frameborder="0" allowfullscreen></iframe>


# Instructions for source code developers
If you're developping or building OpenFOAM technology from source code, then
check the instructions already [available on our wiki](https://github.com/blueCFD/Core/wiki/).


# Building community projects with blueCFD-Core

We are gradually adding ports of popular community projects to blueCFD-Core.

Please follow the respective wiki pages for the project you want to build:

* [Building swak4Foam with blueCFD Core](https://github.com/blueCFD/Core/wiki/Building-swak4Foam-with-blueCFD-Core)


# Graphical User Interface (GUI)

blueCFD-Core does not provide a GUI for using OpenFOAM, but there are already
several GUIs developed by others that use blueCFD-Core:

* Open Source:

    * **[CFDOF](https://github.com/jaheyns/CfdOF#computational-fluid-dynamics-cfd-workbench-for-freecad)**,
      which is an addon for FreeCAD, started working
      with blueCFD-Core 2016-1; it's based on
      [openSim](https://opensimsa.github.io/download.html), which is also an
      addon for FreeCAD.
* Free, but not Open Source:
    * **[Eddy3D add-on for Rhino CAD](https://www.eddy3d.com)** works with blueCFD-Core 2017-2.
* Commercial:

  * **[Butterfly add-on for Rhino CAD](https://www.ladybug.tools/butterfly.html)**
      can be a bit confusing regarding licenses, namely that
      [Rhino CAD 3D](https://www.rhino3d.com) is a closed source paid product,
      but the [Butterfly add-on is open source](https://github.com/ladybug-tools/butterfly).
  * **[DHCAE Tools CastNet](http://www.dhcae-tools.com/CastNet.html)** has worked
    on Windows with blueCFD-Core since 2009-10, namely when blueCFD-Core was
    originally launched as _blueCFD 1.6-1_.
  * **[FEATool Multiphysics MATLAB Toolbox](https://www.featool.com)** runs
    with MATLAB, can be [downloaded for free here](https://www.featool.com/download),
    with paid upgrades for advanced usage and support. It should work with
    blueCFD-Core without [special installation instructions](https://www.featool.com/doc/solver.html#install_of).
  * **[MantiumFlow - CFD Simulation Software by MantiumCAE](http://mantiumflow.com/installation/)**
    started working with blueCFD-Core 2016-1.
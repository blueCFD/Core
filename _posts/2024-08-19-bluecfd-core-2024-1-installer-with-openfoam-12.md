---
layout: post
title: blueCFD-Core 2024-1 (64-bit) Installer now available
---

Today we release blueCFD-Core 2024-1, which provides OpenFOAM 12 as a native
build for Windows, with OpenFOAM binaries acting as normal Windows applications.
This was possible thanks to our various sponsors, benefactors and donators!

The installer for blueCFD-Core 2024-1 is installed separately from 
older blueCFD-Core versions, therefore these installations can coexist.

Released elements are:

  * [blueCFD-Core-2024-1-win64-setup.exe](https://github.com/blueCFD/Core/releases/download/blueCFD-Core-2024-1/blueCFD-Core-2024-1-win64-setup.exe)
      * blueCFD-Core 2024-1 provides MSYS2, OpenFOAM 12 and ParaView 5.11.2.
      * 1173 MiB installer, SHA1: `87a16cd49ba891c9a5ff24d6c24b832e44f6cee7`
      * <span class="blink_underline">**WARNING (2024-08-21)**</span>: You must
        install in a path without spaces in the names for the folders, for
        example:
          * `C:\blueCFD-Core\2024\`
          * For more details, see [Issue #257](https://github.com/blueCFD/Core/issues/257).

  * The [Release Notes for blueCFD-Core 2024-1]({{ site.baseurl }}/ReleaseNotes/bluecfd-core-2024-1)
    page has been created for this release.
    
  * The [Funding page](Funding) has been updated, to reflect the funding the
    project has received so far, as well as the work done so far.

  * The [Project Management page](https://github.com/orgs/blueCFD/projects/2) is
    public, allowing people to know how things are coming along and what are the
    upcoming objectives for 2024 and 2025.

  * A wiki is available for software developers and system installers:
    [blueCFD-Core wiki](https://github.com/blueCFD/Core/wiki)

The source code provided for the port of OpenFOAM 12 has been
[released here](https://github.com/blueCFD/OpenFOAM-dev/tree/blueCFD-Core-12),
as well as of [ThirdParty-12 here](https://github.com/blueCFD/ThirdParty-dev/tree/blueCFD-Core-12).

As mentioned above, the development infrastructure is based on
[MSYS2](https://www.msys2.org/). As listed in the [Funding page](Funding) page,
one of our objectives is to provide updates and builds of OpenFOAM via MSYS2
package manager, however this is not yet available with this release. That said,
instructions are available on blueCFD-Core's wiki on:

  1. [Preparing a new MSYS2 installation for blueCFD‐Core development](https://github.com/blueCFD/Core/wiki/Preparing-a-new-MSYS2-installation-for-blueCFD%E2%80%90Core-development)
  2. [Quick notes on how to update build](https://github.com/blueCFD/Core/wiki/Quick-notes-on-how-to-update-build)
  3. [Loose notes on building custom code](https://github.com/blueCFD/Core/wiki/Loose-notes-on-building-custom-code)

For a complete list of bug reports, issues and wishes that have been submitted
to the blueCFD-Core project, see the
[Issue Tracker page](https://github.com/blueCFD/Core/issues). For example, a
complete list of issues and tasks that were conducted for developing
blueCFD-Core 2024-1, are available there:
[milestone blueCFD-Core 2024-1](https://github.com/blueCFD/Core/milestone/8?closed=1).


For future reference, the overall status of funding and work done so far is as follows:

<table>
<thead>
  <tr>
    <th>Funding Goals</th>
    <th>Task</th>
    <th>Description</th>
    <th>Effort (Euro)</th>
    <th>Funding (%)</th>
    <th>Progress (%)</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td rowspan="4" class="td-center">First</td>
    <td class="td-center"> <b>1</b> </td>
    <td> Synchronise our developments with OpenFOAM-dev, making it build and run-on Windows. </td>
    <td class="td-center"> 900 </td>
    <td class="td-center"> 100 </td>
    <td class="td-center"> 100 </td>
  </tr>
  <tr>
    <td class="td-center"> <b>2</b> </td>
    <td> Automate the sync up between our developments and OpenFOAM-dev, to be able to have weekly builds of it made available automatically. </td>
    <td class="td-center"> 2700 </td>
    <td class="td-center"> 43.5 </td>
    <td class="td-center"> 90 </td>
  </tr>
  <tr>
    <td class="td-center"> <b>3</b> </td>
    <td> Automate of testing whether the weekly builds are working as intended. </td>
    <td class="td-center"> 900 </td>
    <td class="td-center"> 0 </td>
    <td class="td-center"> 0 </td>
  </tr>
  <tr>
    <td class="td-center"> <b>4</b> </td>
    <td> Monitor automation’s results throughout 2024. </td>
    <td class="td-center"> 900 </td>
    <td class="td-center"> 0 </td>
    <td class="td-center"> 50 </td>
  </tr>
  <tr>
    <td rowspan="2" class="td-center">Second</td>
    <td class="td-center"> <b>5</b> </td>
    <td> Deliver the automated builds as a pacman repository for MSys2, to make it easier for people to stay in-sync with OpenFOAM-dev on Windows. </td>
    <td class="td-center"> 1350 </td>
    <td class="td-center"> 0 </td>
    <td class="td-center"> 0 </td>
  </tr>
  <tr>
    <td class="td-center"> <b>6</b> </td>
    <td> Streamline the build+release system of the blueCFD-Core installers. </td>
    <td class="td-center"> 1350 </td>
    <td class="td-center"> 0 </td>
    <td class="td-center"> 20 </td>
  </tr>
  <tr>
    <td class="td-center">Third</td>
    <td class="td-center"> <b>7</b> </td>
    <td> Fixing reported bugs and those caught during the tasks above. </td>
    <td class="td-center"> 1800 </td>
    <td class="td-center"> 0 </td>
    <td class="td-center"> 90 </td>
  </tr>
  <tr>
    <td class="td-center">Fourth</td>
    <td class="td-center"> <b>8</b> </td>
    <td> Release blueCFD-Core 2024-1 with OpenFOAM 12. </td>
    <td class="td-center"> 2700 </td>
    <td class="td-center"> 100 </td>
    <td class="td-center"> 100 </td>
  </tr>
  <tr>
    <td class="td-center">Fifth</td>
    <td class="td-center"> <b>9</b> </td>
    <td> Add OpenFOAM 12 to the automation loop for a monthly release. </td>
    <td class="td-center"> 1800 </td>
    <td class="td-center"> 0 </td>
    <td class="td-center"> 40 </td>
  </tr>
  <tr>
    <td class="td-center"> </td>
    <td class="td-center"> </td>
    <td class="td-right"> <b>Total</b> </td>
    <td class="td-center"> 14400 </td>
    <td class="td-center"> 33 </td>
    <td class="td-center"> 63 </td>
  </tr>
</tbody>
</table>


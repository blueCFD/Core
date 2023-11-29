---
layout: post
title: November 2023 - Status Report for the blueCFD-Core project
---

We are very thankful for the funding we have received so far and we now
have tangible evidence that the funding is being put into good use.

As you can see here: 
[commit history page for `blueCFD-Core-dev` branch](https://github.com/blueCFD/OpenFOAM-dev/commits/blueCFD-Core-dev),
we have implemented a continuous integration bot named `blueCFD-bot`
which automatically synchronizes our development branch with the
[OpenFOAM Foundation](https://openfoam.org)'s development line:
[OpenFOAM-dev commit history page](https://github.com/OpenFOAM/OpenFOAM-dev/commits/master)

The work done so far is part of the first 2 major tasks we are
implementing, from our ongoing first goal for blueCFD-Core:

<table>
<thead>
  <tr>
    <th>Task</th>
    <th>Description</th>
    <th>Effort (Euro)</th>
    <th>Funding so far (%)</th>
    <th>Work done so far (%)</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="td-center"> <b>1</b> </td>
    <td> Synchronise our developments with OpenFOAM-dev, making it build and run-on Windows. </td>
    <td class="td-center"> 900 </td>
    <td class="td-center"> 100 </td>
    <td class="td-center"> 40 </td>
  </tr>
  <tr>
    <td class="td-center"> <b>2</b> </td>
    <td> Automate the sync up between our developments and OpenFOAM-dev, to be able to have weekly builds of it made available automatically. </td>
    <td class="td-center"> 2700 </td>
    <td class="td-center"> 30 </td>
    <td class="td-center"> 50 </td>
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
    <td class="td-center"> 0 </td>
  </tr>
  <tr>
    <td class="td-center"> </td>
    <td class="td-right"> <b>Total</b> </td>
    <td class="td-center"> 5400 </td>
    <td class="td-center"> 32 </td>
    <td class="td-center"> 32 </td>
  </tr>
</tbody>
</table>

Once we have completed this first goal with 4 tasks, it will
enable us to make future releases of blueCFD-Core with less than 50% of
the effort needed for the release of blueCFD-Core 2020-1 and previous
releases.

Looking at our overall goals for 2024 on our
[Funding page](Funding#the-2024-support-drive-aims-to-deliver-the-following)
page, you can see the additional goals for the project, such as the Second
Goal, with which we will be able to:

  - Enable users to access builds of the blueCFD-Core development
    branch directly from the MSys2 command line, similarly to how it is
    available on Ubuntu.

  - Auto-build bot will deliver up-to-date blueCFD-Core installers and
    upload them to the blueCFD-Core project page.

With these first two goals completed, the blueCFD-Core project will only
require a quarter of the effort needed to deliver yearly releases, while also
staying up to sync with the [OpenFOAM Foundation](https://openfoam.org)'s
developments.

Furthermore, with these two goals completed, these will only require a
much smaller yearly maintenance effort.

Once these costs and efforts are brought down, it is possible to start
focusing on the yearly stable releases, such as OpenFOAM 12 (Task #8).

Therefore, we emphasize: With your contributions, it is possible to bring
the blueCFD-Core project to become a sustainable project, to streamline and
automate most of the porting and building workflow, so we can stay
in-sync with the developments by the OpenFOAM Foundation, as well as
contribute to the whole community of OpenFOAM users and developers.

For more details on how you can contribute, please visit the dedicated page
**[Funding for the blueCFD-Core project]({{ site.baseurl }}/Funding)**.

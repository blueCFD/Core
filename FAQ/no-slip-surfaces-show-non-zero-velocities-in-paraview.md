---
layout: faq
title: No-slip surfaces show non-zero velocities in ParaView
---


## Symptom

For example, the tutorial 'incompressible/simpleFoam/motorBike' shows non-zero
velocities on the surfaces of the pilot and motorbike, when it should instead
show zero.

Specifically, this is visible when only the patches for the `pilot` and
`motorbike` are selected in the `Mesh Regions` entry, without the
`internalMesh` being selected.


## Reason

The boundary condition `noSlip` is not properly interpreted by VTK/ParaView,
which results in VTK/ParaView assuming that this is a zero-gradient boudary
condition.

This boundary condition was introduced to OpenFOAM in commit
[ab3081aa6bb](https://github.com/OpenFOAM/OpenFOAM-dev/commit/ab3081aa6bb9cfd813e4fbd0f398d0b13f22b515)
and it is not yet supported in VTK/ParaView.

See the first bug report in OpenFOAM Foundation's bug tracker on this topic,
namely [issue #2298](https://bugs.openfoam.org/view.php?id=2298).

**Note:** This should be fixed when the following report is solved:
[Issue #16873 in VTK's project](https://gitlab.kitware.com/vtk/vtk/issues/16873)


## Solution

The simplest workaround is to run:

```
foamToVTK
```

and open the `VTK\*.vtk` files in ParaView, in order to have the correct data
representation.

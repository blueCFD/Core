---
layout: faq
title: Known limitations with the built-in reader in ParaView
---


Over time, there have been several issues detected with using the internal
`.foam` reader in ParaView that blueCFD-Core has to use on Windows OS. Example
problems:

 1. Already answered on another FAQ entry:
    [No-slip surfaces show non-zero velocities in ParaView](no-slip-surfaces-show-non-zero-velocities-in-paraview)


 2. Certain inclusions of files will not work as intended, such as:

    ```
    #include ${WM_PROJECT_DIR}/etc/caseDicts/setConstraintTypes
    ```

    Part of the problem is that the parenthesis are not unwrapped. The other
    problem is that it's not able to figure out that it's an absolute path.

    This means that patches that are not explicitly defined with boundary
    conditions in the respective field files, could either not have the correct
    value represented or could lead to the fields to not be loaded.

    For example, the following error message can occur:

    ```
    ERROR: In C:\bbd\5105004d\source-paraview\VTK\IO\Geometry\vtkOpenFOAMReader.cxx, line 6902
    vtkOpenFOAMReaderPrivate (000002029AB7BA90): boundaryField propellerTip not found in object U at time = 0
    ```

    * **Fixed as of at least ParaView 5.4.0.**


 3. `includeEtc` may not be supported by ParaView. The expected error message
    is as follows:

    ```
    ERROR: In C:\bbd\5105004d\source-paraview\VTK\IO\Geometry\vtkOpenFOAMReader.cxx, line 6506
    vtkOpenFOAMReaderPrivate (000001FC17973640): Error reading line 25 of X:\ofuser-of4\run\tutorials\multiphase\interPhaseChangeDyMFoam\propeller\0/U: Unsupported directive includeEtc
    ```

    * **Fixed as of at least ParaView 5.4.0.**


 4. Incomplete `dimensions`entries such as this one:
 
    ```
    dimensions      [1 -1 -2 0 0];
    ```

    Will result in an error message such as this one:

    ```
    ERROR: In C:\bbd\5105004d\source-paraview\VTK\IO\Geometry\vtkOpenFOAMReader.cxx, line 6506
    vtkOpenFOAMReaderPrivate (000001FC17973640): Error reading line 18 of X:\ofuser-of4\run\tutorials\multiphase\interPhaseChangeDyMFoam\propeller\0/p_rgh: Expected a number, found a non-digit character ]
    ```

    * **Fixed as of at least ParaView 5.4.0.**


 5. Boundary conditions that use tables or lists that rely on scalar or vector
    data may not be loaded properly. For example, the following boundary
    condition will not have its table data be loaded into ParaView or it could
    even simply break due to not recognizing the boundary condition itself:

    ```
    inlet
    {
        type            uniformFixedValue;
        uniformValue    table
        (
            (0     (0 0 0))
            (0.01  (0 -15 0))
            (100   (0 -15 0))
        );
        value           $internalField;
    }
    ```

    * It can give either just a warning for ParaView versions 5.1 and newer,
      due to the vectors within the table rows:

      ```
      Generic Warning: In C:\bbd\2d618e80\source-paraview\VTK\IO\Geometry\vtkOpenFOAMReader.cxx, line 4023
      Found a list containing scalar data followed by a nested list, but this reader only supports nested lists that precede all scalars. Discarding nested list data.
      ```

    * Or give an error message for not recognizing the boundary condition:

      ```
      ERROR: In ..\..\..\..\source\VTK\IO\vtkOpenFOAMReader.cxx, line 6481
      vtkOpenFOAMReaderPrivate (000000000EFD15F0): Error reading line 33 of X:\ofuser-of4\run\tutorials\multiphase\interPhaseChangeDyMFoam\propeller\0/U: Expected a number, found (
      ```

      * Possible solitions are given here:
        ['turbineSiting tutorial and paraview-3.98.0' thread at CFD-Online](http://www.cfd-online.com/Forums/openfoam-paraview/122678-turbinesiting-tutorial-paraview-3-98-0-a.html)

      * **Fixed as at least ParaView 5.1.0.**


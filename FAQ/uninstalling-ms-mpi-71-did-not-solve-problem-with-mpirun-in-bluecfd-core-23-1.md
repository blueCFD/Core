---
layout: faq
title: Uninstalling MS-MPI 7.1 did not solve problem with <code>mpirun</code> in blueCFD-Core 2.3-1
---

## Reason

Unfortunately sometimes the MS-MPI uninstallers area unable to fully remove all of their DLL files.

## Solution

First, ensure that the problematic DLL files are located where the installer left them. Do this by running the following command in the MSys terminal for blueCFD-Core 2.3-1:

```
where msmpi.dll
```

which should give something like this:

```
C:\Program Files (x86)\blueCFD-Core-2.3\ThirdParty-2.3\platforms\linuxmingw-w64\msmpi-2012\bin\msmpi.dll
C:\Windows\System32\msmpi.dll
C:\Program Files (x86)\blueCFD-Core-2.3\ThirdParty-2.3\platforms\linuxmingw-w64\msmpi-2012\lib\msmpi.dll
```

If this is what you're seeing, then you will need to rename two files at the folder `C:\Windows\System32`:

  * `msmpi.dll` to `msmpi.dll.bak`
  * `msmpires.dll` to `msmpires.dll.bak`

It's advisable to rename the files through Windows Explorer, so that it asks you about whether the files should be renamed with administrative powers.

This should solve the problem.

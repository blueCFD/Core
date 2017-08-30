---
layout: faq
title: Error message <em>'Your "MINGW*" operating system is not supported by this release of OpenFOAM'</em>
---

## Symptom

After starting the blueCFD-Core 2016-1 terminal, a message similar to the
following appears:

```
Your "MINGW64_NT-10.0" operating system is not supported by this release of 
OpenFOAM. For further assistance, please contact www.OpenFOAM.org

bash: sed: No such file or directory
bash onWin: command not found
```


## Reason

After considerable debugging the issue, the conclusion was that:

 1. The `FOAM_INST_DIR` was not being properly set, because it was overridden
    by OpenFOAM's `etc/bashrc`

 2. The `prefs_mingw_w64.sh` was not found by `foamEtcFile`.

Both issues are related to a delay in the mount at `/home/ofuser/blueCFD`,
which results in the files not being found. It's still not clear as to why this
happened, but it's possible that is was after the user installed something new
that broke MSys2's search system.



**Solution**:

 1. Comment out the `FOAM_INST_DIR` lines in `OpenFOAM-4.x/etc/bashrc`.

 2. Use the full path in `~/.blueCFD/of4x.sh` for the _prefs_ files.

---
layout: faq
title: <tt>gnuplot</tt> and <tt>wgnuplot</tt> don't give feedback/prompt
---

Table of Contents:
  * [Valid versions](#valid-versions)
  * [Symptom](#symptom)
  * [Reason](#reason)
  * [Solution](#solution)


## Valid versions

This issue happens only with blueCFD-Core 2017-1 and 2017-2.


## Symptom

When running `gnuplot` as an interactive shell from the command line, it does
not give any feedback nor does it tell us it's waiting for commands.

When running `wgnuplot` (in blueCFD-Core 2017-2), the window does open, but the
prompt appears in the original command line from which we launched `gnuplot`.


## Reason

Starting with blueCFD-Core 2017, it was decided that as many third-party
packages as possible should come from MSys2, which provides the base structure
for blueCFD-Core to work the way it does.

Unfortunately, the built `gnuplot` packages provided by the MSys2 project were
still very new when we adopted it, which resulted in inheriting partially
working installations of Gnuplot.


## Solution

Ignore that there is no prompt and instead (try to) use it as you normally
would use `gnuplot` and `wgnuplot`. For example, run:

```
set terminal
```

and it will show the list of available terminals it can plot to.

---
layout: faq
title: <tt>gnuplot help</tt> does not work
---

Table of Contents:
  * [Valid versions](#valid-versions)
  * [Symptom](#symptom)
  * [Reason](#reason)
  * [Solution](#solution)


## Valid versions

This issue happens only with blueCFD-Core 2017-1 and 2017-2.


## Symptom

After running `gnuplot` as an interactive shell from the command line and if
then we try to run the command `help`, it gives the following message:

* On blueCFD-Core 2017-1:

  ```
  This gnuplot was not built with inline help
  ```

* On blueCFD-Core 2017-2:

  ```
  C:/building/msys64/mingw64/share/gnuplot/5.2/gnuplot.gih: No such file or directory
  ```


## Reason

Starting with blueCFD-Core 2017, it was decided that as many third-party
packages as possible should come from MSys2, which provides the base structure
for blueCFD-Core to work the way it does.

Unfortunately, the built `gnuplot` packages provided by the MSys2 project were
still very new when we adopted it, which resulted in inheriting partially
working installations of Gnuplot.


## Solution

1. Open the blueCFD-Core terminal.

2. Run the following commands:

   ```
   cd /mingw64/share/gnuplot/docs/
   explorer .
   ```

   Notice that it's a space and a dot at the end of the second line.

3. Windows Explorer should open up, from which you can now open the documents
   provided there.


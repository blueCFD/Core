---
layout: faq
title: How to install additional software, such as Gmsh
---


## Question

As exemplified in the FAQ entry [How to install and/or use another version of ParaView](how-to-use-another-version-of-ParaView),
it's possible to change the default installation of ParaView.

But what about adding other applications, such as [Gmsh](http://gmsh.info/)?


## Answer

The following are the standard installation steps, for which is given an
example on how to install [Gmsh](http://gmsh.info/) and can these steps can be used to install other
applications as well:

1. Browse to the folder where blueCFD-Core is installed, by using the shortcut
   available in the Windows Start menu, in menu Programs or Applications and
   look for the blueCFD-Core 2016 menu entry, then click on the shortcut
   `blueCFD-Core folder`.

2. It should have opened Windows Explorer and it should show the folder where
   blueCFD-Core is installed. From there, navigate to the sub-folder
   `msys64\home\ofuser\bashrc.d`.

   * For example, the full path for the default installation is this:
     `C:\Program Files\blueCFD-Core-2016\msys64\home\ofuser.bashrc.d`

3. Now copy the file `gnuplot.sh` to `gmsh.sh`.

4. Edit the file `gmsh.sh`; you can right-click on the file and choose `Open 
   with Notepad2` to edit it.

5. Change the path in the last line:

   ```
   export PATH=$PATH:$HOME/AddOns/gnuplot/bin
   ```

   to something like this:

   ```
   export PATH=$PATH:$HOME/AddOns/gmsh
   ```

6. Save the file (menu `File -> Save`) and close Notepad2's window.

7. Go back to the opened Windows Explorer window, navigate back to the main
   folder for blueCFD-Core and then go into the folder `AddOns`.

   * For example, the full path for the default installation is this:
     `C:\Program Files\blueCFD-Core-2016\AddOns`

8. Open an Internet browser and download the official Gmsh ZIP package from
   here: [http://gmsh.info/#Download](http://gmsh.info/#Download)

9. Unpack manually the downloaded package - e.g. `gmsh-3.0.4-Windows64.zip` -
   into a temporary folder.

10. After unpacking, it should have created a folder with a long name - e.g.
   `gmsh-3.0.4-Windows`. Rename it to `gmsh`.

11. Now move this folder `gmsh` into the `AddOns` folder in initial Windows
    Explorer window, where this `AddOns` folder was open.

12. Start new blueCFD-Core terminal and try it out.

   * If you already have a terminal open, you can run the following command:
  
     ```
     source ~/.bashrc
     ```

     and then `gmsh` should be ready to use.


----

**Side note:** The folder structure inside `AddOns` should look something like this:

```
    .
    ├── gmsh
    │   ├── CREDITS.txt
    │   ├── demos
    │   ├── gmsh.exe
    │   ├── LICENSE.txt
    │   ├── onelab.py
    │   ├── README.txt
    │   └── tutorial
    ├── gnuplot
    │   ├── bin
    │   ├── BUGS
    │   ├── ChangeLog
    │   ├── contrib
    │   ├── Copyright
    │   ├── Copyright-ja.txt
    │   ├── demo
    │   ├── docs
    │   ├── etc
    │   ├── license
    │   ├── NEWS
    │   ├── README
    │   ├── README-Windows.txt
    │   ├── README-Windows-ja.txt
    │   ├── RELEASE_NOTES
    │   └── share
    ├── MSMPI71_MSMpiSetup.exe
    ├── notepad2
    │   ├── License.txt
    │   ├── Notepad2.exe
    │   ├── Notepad2.ini
    │   └── Notepad2.txt
    └── ParaView
        ├── bin
        ├── data
        ├── doc
        └── lib
```


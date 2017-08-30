---
layout: faq
title: How to install and/or use another version of ParaView
---


## Reason

There are two main reasons for wanting to use another version of ParaView:

 1. If ParaView crashes right after launching it, it is very likely that either
    the GPU/Graphics card in your machine doesn't support OpenGL 2, or that
    the drivers currently installed for that GPU do not properly support
    OpenGL 2.

    * In this scenario, it's best to install ParaView 4.4.0, which was the last
      pre-built version for Windows that provided OpenGL 1.x support.

 2. If the version of ParaView provided with blueCFD-Core is not the latest
    version.


## Solution

There are at least 2 possible solutions:

 1. [Replace the installation of ParaView in blueCFD-Core](#solution-1---replace-the-installation-of-paraview-in-bluecfd-core)
 2. [Use an existing installation of ParaView](#solution-2---use-an-existing-installation-of-paraview)

**Note:** Both solutions require you to have installed ParaView through the
blueCFD-Core installer, so that the environment is automatically loaded into
the blueCFD-Core terminal and allow ParaView to be launched from the terminal's
command line.


### Solution 1 - Replace the installation of ParaView in blueCFD-Core

 1. Start the blueCFD-Core terminal.

 2. Execute the following command in the terminal:

    ```
    cd ~/AddOns/
    ```

 3. Start Windows Explorer, because the next steps have to be done
    interactively, since administrative permission may be necessary:

    ```
    explorer .
    ```

    Notice that the command is: `explorer` _space_ _dot_

 4. Windows Explorer should open up and show the contents of the `AddOns`
    folder.

 5. Now either rename or delete the contents of the folder `ParaView`. Don't
    forget to create a new `ParaView` folder, so that it can be used with the
    ParaView installer.

 6. Now you can inside the `ParaView` folder and copy the full path from the
    address bar and use it during the installation of ParaView. Below is shown
    the address bar from Windows 10; make sure to click on the right side of
    the path so that it goes into editing mode that is shown below:

    ![Example of where to copy the path from]({{ baseurl.url }}/images/ParaView_Path_to_copy.png)

 7. Run the ParaView installer for the version you want to use and be certain
    that the correct path is used, as shown in the image below:

    ![Example of where to change the installation path]({{ baseurl.url }}/images/Install_Path_For_ParaView.png)

 8. Once ParaView is installed, it should be ready to be used from the
    blueCFD-Core terminal.


### Solution 2 - Use an existing installation of ParaView

**Note**: The downside to using this solution is that the file extension
`.foam` is not automatically register in Windows to open with this version of
ParaView.

 1. Using as an example, if ParaView 4.4 is installed in the folder
    `C:\Program Files\ParaView 4.4.0`.

 2. Start the blueCFD-Core terminal.

 3. Execute the following command in the terminal:

    ```
    nano ~/.bashrc.d/paraview.sh
    ```

 4. It should have opened the file in a window of Notepad2.

 5. Go to line 42 and change this line:

    ```
    export AddOns_ParaView_DIR=$HOME/AddOns/ParaView
    ```

    To this line:

    ```
    export AddOns_ParaView_DIR="/c/Program Files/ParaView 4.4.0"
    ```

 6. Save the file (menu `File --> Save`) and close the Notepad2 window.

 7. Use the key combination `Alt+F2` to start a new terminal. If there are no
    error messages, then the older terminal can now be closed.

 8. From now on, whenever the commands `paraview` or `paraFoam` are executed,
    ParaView 4.4 should always open.

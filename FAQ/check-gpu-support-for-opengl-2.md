---
layout: faq
title: Check the GPU support for OpenGL 2.x
---


## Question

The ParaView version provided with blueCFD-Core crashes when it starts and it
looks like it might be due to missing OpenGL 2.x support. What can I do to
check if this is the problem and how to fix it?


## Answer

The company _realtech VR_ provides an application named
[OpenGL Extensions Viewer](http://realtech-vr.com/admin/glview) which can be
used to see the features made available in the current Windows installation.
 
 * You may want to try to download and install it, to confirm which versions of
   OpenGL is supported in your current Windows installation.

However, if the problem is truly due to missing support for OpenGL 2.x, then
you can simply check the Graphics Card and/or GPU your machine has got and what
are currently installed in your machine. If you search online for _What
graphics card do I have?_ - you should find several instructions on how to find
out about that.

After knowing which Graphics Card and/or GPU your machine has got, you can try
and update those drivers with the most recent ones from the manufacturer of the
machine or the Graphics Card or the GPU itself. For example, Intel provides
drivers on their website specific for each CPU model that has a GPU integrated
into it. With luck, the most recent drivers provided with it will support
OpenGL 2.x.

For example, it was reported that a laptop with a CPU i5-2410m and running
Windows 7 x64 was not running ParaView 5.1.2 properly, until the
[most recent driver from Intel for it](https://downloadcenter.intel.com/download/24971/Intel-HD-Graphics-Driver-for-Windows-7-8-64-bit?product=52224)
was installed. After that, ParaView 5.1.2 with start without crashing and work
properly.

However, for example, the Intel CPU i3-350m does support OpenGL 2.1, but does
not provide all of the features that ParaView needs to work properly.
Therefore, ParaView 5.1.2 will likely not work properly on this generation of
CPU/GPU.

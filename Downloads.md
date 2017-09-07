---
layout: page
title: Downloads
---

* [blueCFD-Core 2016-2](#bluecfd-core-2016-2)
* [blueCFD-Core 2016-1](#bluecfd-core-2016-1)
* [blueCFD-Core 2.3-1](#bluecfd-core-2.3-1)
* [Download counters](#download-counters)

<hr>

# blueCFD-Core 2016-2

Available installers for Windows 7 through 10, all 64-bit:

  * [blueCFD-Core-2016-2-win64-setup.exe](https://github.com/blueCFD/Core/releases/download/blueCFD-Core-2016-2/blueCFD-Core-2016-2-win64-setup.exe)
      * blueCFD-Core 2016-2 provides **OpenFOAM 4.x**
        ([d214c8dfd5](https://github.com/OpenFOAM/OpenFOAM-4.x/commits/d214c8dfd5ba56dd442bae186fd4fb50dd35c338)),
        ParaView 5.1.2 and MS-MPI 7.1.
          * [CLI](https://en.wikipedia.org/wiki/Command-line_interface) and
            development stack included with MSys2.
          * See [release notes]({{ site.baseurl }}/ReleaseNotes/bluecfd-core-2016-2#software-provided-with-installers)
            for more details.
      * 740 MiB installer, SHA1: `7c83c5d923d1c4a08217f115b82bd41f08c45fa6`


Further details:

  * Instructions on how to install and build from source code will be provided in the [User Guides]({{ site.baseurl }}/UserGuide) page.


<hr>

# blueCFD-Core 2016-1

Available installers for Windows 7 through 10, all 64-bit:

  * [blueCFD-Core-2016-1-win64-setup.exe](https://github.com/blueCFD/Core/releases/download/blueCFD-Core-2016-1/blueCFD-Core-2016-1-win64-setup.exe)
      * blueCFD-Core 2016-1 provides **OpenFOAM 4.x**
        ([7dfa780c48](https://github.com/OpenFOAM/OpenFOAM-4.x/commits/7dfa780c481b8b79b1ee4d5bcf3e6b839a5ef017)),
        ParaView 5.1.2 and MS-MPI 7.1.
          * [CLI](https://en.wikipedia.org/wiki/Command-line_interface) and
            development stack included with MSys2.
          * See [release notes]({{ site.baseurl }}/ReleaseNotes/bluecfd-core-2016-1#software-provided-with-installers)
            for more details.
      * 710 MiB installer, SHA1: `4ba23f6757ccdfd041f2e2627daee7b947f41195`


Further details:

  * Instructions on how to install and build from source code will be provided in the [User Guides]({{ site.baseurl }}/UserGuide) page.


<hr>

# blueCFD-Core 2.3-1

The port of an early version of OpenFOAM 2.3.x is available here:
[blueCFD-Core 2.3 Download Area](http://joomla.bluecape.com.pt/index.php?option=com_remository&Itemid=47&func=select&id=45)


<hr>

# Download counters

The following list provides a complete list of accesses to downloadable files for all releases:

{% capture wholedownloadlist %}{% include downstats.md %}{% endcapture %}
{{ wholedownloadlist | markdownify }}

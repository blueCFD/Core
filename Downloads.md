---
layout: page
title: Downloads
---

* [blueCFD-Core 2017-2](#bluecfd-core-2017-2)
* [blueCFD-Core 2017-1](#bluecfd-core-2017-1)
* [blueCFD-Core 2016-2](#bluecfd-core-2016-2)
* [blueCFD-Core 2016-1](#bluecfd-core-2016-1)
* [blueCFD-Core 2.3-1](#bluecfd-core-2.3-1)
* [Download counters](#download-counters)

<hr>

# blueCFD-Core 2017-2

Available installers for Windows 7 through 10, all 64-bit:

  * [blueCFD-Core-2017-2-win64-setup.exe](https://github.com/blueCFD/Core/releases/download/blueCFD-Core-2017-2/blueCFD-Core-2017-2-win64-setup.exe)
      * blueCFD-Core 2017-2 provides **OpenFOAM 5.x**
        ([19576d14](https://github.com/OpenFOAM/OpenFOAM-5.x/commits/19576d14a099e0b21e88a22b57fcf027d00ffa50)),
        ParaView 5.4.1 and MS-MPI 7.1 (MS-MPI 8.1 is optional).
          * [CLI](https://en.wikipedia.org/wiki/Command-line_interface) and
            development stack included with MSys2.
          * See [release notes]({{ site.baseurl }}/ReleaseNotes/bluecfd-core-2017-2#software-provided-with-installers)
            for more details.
      * 790 MiB installer, SHA1: `4df0b7a38eea5363b66e5f7d0d94f50714d59f1a`


Further details:

  * Instructions on how to install and build from source code will be provided in the [User Guides]({{ site.baseurl }}/UserGuide) page.
  * This installer **can be used for updating an existing installation of blueCFD-Core 2017-1**, since it will load the same installation settings.
  * blueCFD-Core 2017 is installed separately from previous blueCFD-Core versions and should not be used as a direct upgrade.


<hr>

# blueCFD-Core 2017-1

Available installers for Windows 7 through 10, all 64-bit:

  * [blueCFD-Core-2017-1-win64-setup.exe](https://github.com/blueCFD/Core/releases/download/blueCFD-Core-2017-1/blueCFD-Core-2017-1-win64-setup.exe)
      * blueCFD-Core 2017-1 provides **OpenFOAM 5.x**
        ([5f49a693](https://github.com/OpenFOAM/OpenFOAM-5.x/commits/5f49a69300a1e15b9d927966960751b688e3dd86)),
        ParaView 5.4.1 and MS-MPI 7.1 (MS-MPI 8.1 is optional).
          * [CLI](https://en.wikipedia.org/wiki/Command-line_interface) and
            development stack included with MSys2.
          * See [release notes]({{ site.baseurl }}/ReleaseNotes/bluecfd-core-2017-1#software-provided-with-installers)
            for more details.
      * 727 MiB installer, SHA1: `4367af23e453dde2dd406539a01ef76f2afa2376`


Further details:

  * Instructions on how to install and build from source code will be provided in the [User Guides]({{ site.baseurl }}/UserGuide) page.
  * blueCFD-Core 2017 is installed separately from previous blueCFD-Core versions and should not be used as a direct upgrade.


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
      * 726 MiB installer, SHA1: `6925346856d62124971316f5886b18977b49d266`


Further details:

  * Instructions on how to install and build from source code will be provided in the [User Guides]({{ site.baseurl }}/UserGuide) page.
  * This installer **can be used for updating an existing installation of blueCFD-Core 2016-1**, since it will load the same installation settings.


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

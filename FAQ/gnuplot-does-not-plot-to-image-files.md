---
layout: faq
title: Gnuplot does not plot to PNG, JPG, EPS and PS
---

Table of Contents:
  * [Valid versions](#valid-versions)
  * [Symptom](#symptom)
  * [Reason](#reason)
  * [Solution](#solution)


## Valid versions

This issue happens only with blueCFD-Core 2017-1.


## Symptom

It's not possible to use `set terminal png` nor any of the other popular
formats, such as JPG, EPS and PS.

More specifically, after running `gnuplot` as an interactive shell from the
command line and if then we try to run the command `set terminal`, it only
gives the following output:

```
gnuplot> set terminal

Available terminal types:
           canvas  HTML Canvas object
              cgm  Computer Graphics Metafile
          context  ConTeXt with MetaFun (for PDF documents)
          domterm  DomTerm terminal emulator with embedded SVG
             dumb  ascii art for anything that prints text
              dxf  dxf-file for AutoCad (default size 120x80)
            eepic  EEPIC -- extended LaTeX picture environment
              emf  Enhanced Metafile format
            emtex  LaTeX picture environment with emTeX specials
         epslatex  LaTeX picture environment using graphicx package
              fig  FIG graphics language for XFIG graphics editor
             hpgl  HP7475 and relatives [number of pens] [eject]
            latex  LaTeX picture environment
               mf  Metafont plotting standard
               mp  MetaPost plotting standard
             pcl5  HP Designjet 750C, HP Laserjet III/IV, etc. (many options)
       postscript  PostScript graphics, including EPSF embedded files (*.eps)
          pslatex  LaTeX picture environment with PostScript \specials
            pstex  plain TeX with PostScript \specials
         pstricks  LaTeX picture environment with PSTricks macros
              qms  QMS/QUIC Laser printer (also Talaris 1200 and others)
              svg  W3C Scalable Vector Graphics
          texdraw  LaTeX texdraw environment
             tgif  TGIF X11 [mode] [x,y] [dashed] ["font" [fontsize]]
         tkcanvas  Tk canvas widget
             tpic  TPIC -- LaTeX picture environment with tpic \specials
          unknown  Unknown terminal type - not a plotting device
          windows  Microsoft Windows
```

Meaning that it really is missing these formats.


## Reason

Starting with blueCFD-Core 2017-1, it was decided that as many third-party
packages as possible should come from MSys2, which provides the base structure
for blueCFD-Core to work the way it does.

Unfortunately, the built `gnuplot` packages provided by the MSys2 project were
still very new when we adopted it, which resulted in inheriting partially
working installations of Gnuplot.


## Solution

Upgrade your blueCFD-Core 2017-1 installation to 2017-2.

As for 2017-2, you have access again to the majority of the supported formats:

```
set terminal

Available terminal types:
             caca  Colour ascii art using libcaca, the Colour AsCii Art library
       cairolatex  LaTeX picture environment using graphicx package and Cairo backend
           canvas  HTML Canvas object
              cgm  Computer Graphics Metafile
          context  ConTeXt with MetaFun (for PDF documents)
          domterm  DomTerm terminal emulator with embedded SVG
           dpu414  Seiko DPU-414 thermal printer [small medium large]
             dumb  ascii art for anything that prints text
              dxf  dxf-file for AutoCad (default size 120x80)
            eepic  EEPIC -- extended LaTeX picture environment
              emf  Enhanced Metafile format
            emtex  LaTeX picture environment with emTeX specials
         epscairo  eps terminal based on cairo
         epslatex  LaTeX picture environment using graphicx package
     epson_180dpi  Epson LQ-style 180-dot per inch (24 pin) printers
      epson_60dpi  Epson-style 60-dot per inch printers
      epson_lx800  Epson LX-800, Star NL-10, NX-1000, PROPRINTER ...
              fig  FIG graphics language for XFIG graphics editor
              gif  GIF images using libgd and TrueType fonts
           hp500c  HP DeskJet 500c, [75 100 150 300] [rle tiff]
             hpdj  HP DeskJet 500, [75 100 150 300]
             hpgl  HP7475 and relatives [number of pens] [eject]
           hpljii  HP Laserjet series II, [75 100 150 300]
             hppj  HP PaintJet and HP3630 [FNT5X9 FNT9X17 FNT13X25]
             jpeg  JPEG images using libgd and TrueType fonts
            latex  LaTeX picture environment
               mf  Metafont plotting standard
               mp  MetaPost plotting standard
          nec_cp6  NEC printer CP6, Epson LQ-800 [monochrome color draft]
          okidata  OKIDATA 320/321 Standard
              pbm  Portable bitmap [small medium large] [monochrome gray color]
             pcl5  HP Designjet 750C, HP Laserjet III/IV, etc. (many options)
         pdfcairo  pdf terminal based on cairo
              png  PNG images using libgd and TrueType fonts
         pngcairo  png terminal based on cairo
       postscript  PostScript graphics, including EPSF embedded files (*.eps)
          pslatex  LaTeX picture environment with PostScript \specials
            pstex  plain TeX with PostScript \specials
         pstricks  LaTeX picture environment with PSTricks macros
              qms  QMS/QUIC Laser printer (also Talaris 1200 and others)
               qt  Qt cross-platform interactive terminal
          sixelgd  sixel using libgd and TrueType fonts
            starc  Star Color Printer
              svg  W3C Scalable Vector Graphics
      tandy_60dpi  Tandy DMP-130 series 60-dot per inch graphics
          texdraw  LaTeX texdraw environment
             tgif  TGIF X11 [mode] [x,y] [dashed] ["font" [fontsize]]
         tkcanvas  Tk canvas widget
             tpic  TPIC -- LaTeX picture environment with tpic \specials
          unknown  Unknown terminal type - not a plotting device
          windows  Microsoft Windows
              wxt  wxWidgets cross-platform interactive terminal
```

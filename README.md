termite colorswitcher
=====================

This is a simple tool that can change your [termite](https://github.com/thestinger/termite.git) color theme 'on the fly' using themes from [khamer's base16 theme repo](https://api.github.com/repos/khamer/base16-termite/contents/themes)  
Use at your own risk.

If you already have an active color configuration you will be prompted to remove it or comment it out before re-running this script.

TODO:
* Retain editor config footer if found.
* Add (option for) other/manual sources.

installation
============

    git clone https://github.com/epleterte/termite-colorswitcher
    cd termite-colorswitcher
    ./install.sh

usage
=====

    $ ./termite-colorswitcher -h
    Safely append color config to ~/.config/termite/config
    
    Usage: ./termite-colorswitcher [-hdq] [-t <theme>]
      -h    This helpful text
      -d    Delete color config previosly added.
      -t    Set theme.
      -q    Quiet - only print errors.
    
    Examples:
      ./termite-colorswitcher -l
      ./termite-colorswitcher -t sometheme-dark
      ./termite-colorswitcher -q -t sometheme-light


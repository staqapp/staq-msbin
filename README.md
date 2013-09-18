Staq's fork of MSBIN
====================
Based on Yan Ivnitskiy's code at https://github.com/yan/msbin

Note
====
This is not finished software, though we are running it in production. We plan to
refactor and add a test suite. Please treat this as alpha software with
breaking API changes very likely.

We also plan to change the API to return a string, instead of printing to `STDOUT`.

How it works
============
msbin reads a stream of Microsoft Binary XML (such as Silverlight
messages) and writes its human-readable XML equivalent to stdout.

All types should be implemented, but not all are tested.

Usage
=====
    ./msbin.rb file.msbin
    ./msbin.rb -

Where file.msbin can be a file saved from burp using the 'copy to file'
or a straight binary XML dump.

More Information
================
* http://msdn.microsoft.com/en-us/library/cc219210(PROT.10).aspx
* http://msdn.microsoft.com/en-us/library/cc219175(PROT.10).aspx
* http://download.microsoft.com/download/9/5/E/95EF66AF-9026-4BB0-A41D-A4F81802D92C/[MC-NBFX].pdf

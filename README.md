OpenRegion - bypass region lock on 3DS firmware v4.x and v6.x
=============================================================

Launch games from any region using the well known DS profile exploit in System Settings.

Dependancies:
-------------

1) ropMultiloader ([link](http://filetrip.net/3ds-downloads/homebrew/download-ropmultiloader-1-1-f32981.html))
or another working ROP chain installer.

2) A DS mode flash cart that works with your firmware version. 

Installation:
-------------

For firmware version 4.x:

1) Install ROP using a DS mode flash cart (choose Launcher.dat 4.x when using the ropMultiloader)

2) Copy the Launcher.dat file to the root of your SD card.

For firmware version 6.x:

1) Install ROP using a DS mode flash cart (choose MSetForBoss.dat 6.x when using the ropMultiloader)

2) Copy the Launcher.dat file to the root of your SD card.

Usage:
------

After putting the game cart in your 3DS goto:

System Setting -> Other Settings -> Profile -> Nintendo DS Profile

Then wait a few seconds for your game to launch.

**Happy Gaming!**

Compiling:
----------

If you wish to compile the source yourself then you will need to:

1) download ARMIPS ([link](http://www.romhacking.net/utilities/635/)).

2) change the ARMIPS_PATH variable in the Makefile accordingly.

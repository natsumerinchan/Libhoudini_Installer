# Libhoudini_Installer

#### 1.Introduction
A Gearlock package for install libhoudini arm translation on Android-x86 when you have replaced root manager by Magisk.

#### 2.Supports OS
x86/x86_64 Android6 - Android9

#### 3.Instructions

1.  Download package from [Releases tag](https://github.com/natsumerinchan/Libhoudini_Installer/releases)
2.  Download houdini.sfs from https://github.com/SGNight/Arm-NativeBridge
3.  Rename your houdini.sfs to houdinia_b.sfs .


- "a" is Android version,it can be 6,7,8,9
- "b" is system architecture ,it can be x,y,z ; "x"=arm32 for x86 system;"y"=arm32 for x86_64 system;"z"=arm64 for x86_64 system


4.  Open this package as a .7z file by 7-Zip or NanaZip,put houdini.sfs into $Package_root_directory/system/etc directory
5.  Install this package by Gearlock Recovery mode
6.  Go to Settings and turn on the arm compatibility switch,reboot.
7.  Enjoy!



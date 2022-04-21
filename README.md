# Libhoudini_Installer

#### 1.Introduction
A Gearlock package for install libhoudini arm translation on Android-x86 when you have replaced root manager by Magisk.

#### 2.Supports OS
x86/x86_64 Android6 - Android9

#### 3.Instructions

1.  Download package from [Releases tag](https://github.com/natsumerinchan/Libhoudini_Installer/releases)
2.  Download houdini.sfs from https://github.com/SGNight/Arm-NativeBridge

- x86 only supports "x" version,x86_64 can use "y" and "z" versions at the same time;Android8 and Android9 only have "y" versions.

3.  Rename your "houdini.sfs" to "houdiniα_β.sfs" .

- "α" is Android version,it can be "6","7“,"8","9"
- "β" is system architecture,it can be "x","y","z" ; "x"=arm32 for x86 system;"y"=arm32 for x86_64 system;"z"=arm64 for x86_64 system

4.  Open this package as a .7z file by 7-Zip or NanaZip,put houdini.sfs into x86(or x86_64)/arm folder.

- "x" version put in x86 folder.
- "y" and "z" versions put in x86_64 folder.

5.  Install this package by Gearlock Recovery mode
6.  Go to Settings and turn on the arm compatibility switch,reboot.
7.  Enjoy!



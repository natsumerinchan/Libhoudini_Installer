# Libhoudini_Installer

#### 1.Introduction
A Gearlock package for install libhoudini translation on Android-x86 when you have installed magisk.

#### 2.Supports OS
x86/x86_64 Android6 - Android9

#### 3.Instructions

1.  Download package from [Releases tag](https://github.com/natsumerinchan/Libhoudini_Installer/releases)
2.  Download houdini.sfs from https://github.com/SGNight/Arm-NativeBridge
3.  Rename your houdini.sfs 
 
<details>
<summary>example</summary>
 
- Android version:Android9
- System architecture:x86_64
- rename_to:houdini9_y.sfs
- "9" is Android version,"y" is system architecture
- "x"=arm32 for x86 system;"y"=arm32 for x86_64 system;"z"=arm64 for x86_64 system
 
 </details>
 
4.  Open this package as a .7z file by 7-Zip or NanaZip,put houdini.sfs into $Package_root_directory/system/etc directory
5.  Install this package by Gearlock Recovery mode
6.  Go to Settings and turn on the arm compatibility switch,reboot.
7.  Enjoy!



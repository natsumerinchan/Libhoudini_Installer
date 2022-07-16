# Libhoudini_Installer

[ **简体中文** ](README_zh_cn.md) || **English**

#### 1.Introduction
A Gearlock package for install libhoudini arm translation on Android-x86 when you have replaced root manager by Magisk.

#### 2.Supports OS
x86/x86_64 Android6 - Android9

#### 3.Instructions

1.  Download Libhoudini_Installer from [Releases tag](https://github.com/natsumerinchan/Libhoudini_Installer/releases)
2.  Install this package by Gearlock Recovery mode
3.  Go to Settings and turn on the arm compatibility switch,reboot.
4.  Enjoy!

#### 4.How to build

```
git clone https://github.com/AXIM0S/gearlock-dev-kit; cd ./gearlock-dev-kit
```

```
./configure; rm -rf ./workdir 
```
- choose "3) Custom Core Package"

```
git clone -b Android8 https://github.com/natsumerinchan/Libhoudini_Installer.git workdir
```

```
rm -rf ./workdir/*.md ./workdir/LICENSE ./workdir/.git ./workdir/.gitignore
```

```
./build
``` 
- choose "1) I configured it manually"

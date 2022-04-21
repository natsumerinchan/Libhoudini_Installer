# Libhoudini_Installer

#### 1.介绍
用于给Android-x86安装libhoudini arm兼容层的gearlock扩展包

#### 2.制作原因
把Android-x86的root提权方式换成magisk后会使旧的libhoudini安装方式重启就失效

#### 3.支持系统
x86/x86_64 Android6 - Android9

#### 4.使用方法

1.  [下载Libhoudini_Installer](https://github.com/natsumerinchan/Libhoudini_Installer/releases)
2.  下载houdini.sfs https://github.com/SGNight/Arm-NativeBridge

- x86 系统只支持"x"版本;x86_64 系统可同时使用"y"和"z"版本;Android8、Android9只存在"y"版本

3.  把你下载的 "houdini.sfs" 重命名为 "houdiniα_β.sfs" .

- "α" 指Android版本，可为"6"、"7"、"8"、"9"
- "β" 指系统架构,可为"x","y","z" ; "x"=用于x86系统的arm32兼容层;"y"=用于x86_64系统的arm32兼容层;"z"=用于x86_64系统的arm64兼容层

4.  用7-Zip或NanaZip打开Libhoudini_Installer_*.gxp（会被识别为7z文件），把houdini.sfs拖入x86(或x86_64)/arm文件夹
- "x"放进x86文件夹
- "y"和"z"放进x86_64文件夹

5.  进入Gearlock Recovery安装本模块
6.  进入设置打开arm兼容开关，重启
7.  Enjoy!

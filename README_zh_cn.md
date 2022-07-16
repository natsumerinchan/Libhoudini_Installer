# Libhoudini_Installer

 **简体中文** || [ **English** ](README.md)

#### 1.介绍
用于给Android-x86安装libhoudini arm兼容层的gearlock扩展包

#### 2.制作原因
把Android-x86的root方式换成magisk后手动执行enable_nativebridge命令开启arm兼容会提示权限不足（system分区没有挂载为可读写），按Alt + F1进入后台终端挂载system分区执行命令的话系统重启后就会失效

#### 3.支持系统
x86/x86_64 Android6 - Android9

#### 4.使用方法

1.  [下载Libhoudini_Installer](https://github.com/natsumerinchan/Libhoudini_Installer/releases)
2.  进入Gearlock Recovery安装本模块
3.  进入设置打开arm兼容开关，重启
4.  Enjoy!

#### 5.如何构建

```
git clone https://github.com/AXIM0S/gearlock-dev-kit; cd ./gearlock-dev-kit
```

```
./configure; rm -rf ./workdir 
```
- 选择 "3) Custom Core Package"

```
git clone -b Android7 https://github.com/natsumerinchan/Libhoudini_Installer.git workdir
```

```
rm -rf ./workdir/*.md ./workdir/LICENSE ./workdir/.git ./workdir/.gitignore
```

```
./build
``` 
- 选择 "1) I configured it manually"

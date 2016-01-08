[前言]
网上有一些ndk编译python的做法，但按照教程做总是不成功，可能是shell的版本不一样。
网上的大多是python-2.x的编译方法，由于我没有3.x的环境，所以没有真正测试，但我的方法应该可以胜任3.x的移植。
网上的教程大多只有做法，没有解释，这篇教程加上了每一步为什么这么做的解释。

[制作目的]
不是：编译一个可执行文件Python
而是：把python源文件编译成静态库，用在项目里面，简化一些cpp不容易处理的问题，比如xml,json读写等
不是：需要python的所有特性和库
而是：编译python的标准功能，尽可能地编译一些第三方库进去，比如xml,json,network,proto的解析等。

[环境配置]
已经安装好的Python环境，假设Python版本号是[py-version]。
下载[py-version]对应的源码，因为跨平台编译需要用到PC上的Python解释器，所以源码和环境的版本号一定要对应。
NDK环境，已经配置好环境变量。

[我的配置]
PC:Apple-10.9.5, Python-2.7.5
源码:Python-2.7.5

[制作过程]
*新建一个ndk工程
	目录结构为:	ndk-python|jni(文件夹，存放Android.mk和Application.mk文件)
				ndk-python|src(文件夹，存放要编译的源码)
*将要python-2.7.5源码拷贝到ndk工程
	cp Python-2.7.5/Python ndk-python/src; Python目录是python的语法核心
	cp Python-2.7.5/Objects ndk-python/src; Objects目录是python的核心对象
	cp Python-2.7.5/Parser ndk-python/src; Parser目录是语法解释器
	cp Python-2.7.5/Include ndk-python/src; Include目录包含了所有的头文件
*生成pyconfig.h
	pyconfig.h是python用来支持跨平台编译的文件，每个平台都不一样，需要自己用configure脚本生成
	把gen-config.h.sh拷贝到Python-2.7.5目录里面，执行。
	正确执行后，会生成一个pyconfig.h的文件。
	把pyconfig.h拷贝到ndk-python/src/Include
	准备工作结束
*编写Application.mk
	APP_PLATFORM不能用19，android-19有一个语言相关的结构体不正确
*编译并排错
	运行sh compile.sh
	
	错误: pyport.h:886:2:
	原因: pyconfig.h没有正确生成，导致 LONG_BIT!=8*SIZEOF_LONG
	解决: 修改pyconfig.h, 把SIZEOF_LONG的值改成4, 因为ndk的默认值就是4

	错误: 
	原因: ndk中va_list不是array
	解决: 删除pyconfig.h中的#define VA_LIST_IS_ARRAY 1

	错误: dynload_aix.c:11:21 找不到sys/ldr.h
	原因: 这个文件是用来在python中导入aix格式的C库的，由于用不到，所以直接删掉
	解决: 删掉dynload_*.c，这是一系列通类型的文件

	错误: mactoolboxglue.c:27:0 找不到Carbon/Carbon.h
	原因: 不知道原因，但mactoolboxglue.c看起来没什么用
	解决: 直接删掉mactoolboxglue.c

	错误: pymath.o里面的汇编代码出错
	原因: 不知道，但汇编代码经常是不可移植的，这两个函数也没什么用。
	解决: 注释pyconfig.h里面的#define HAVE_GCC_ASM_FOR_X87 1

	错误: pythonrun.c:32:22 找不到langinfo.h
	原因: ndk没有这个文件
	解决: 注释pyconfig.h里面的 #define HAVE_LANGINFO_H 1

	错误: strtod.c errno的定义与ndk冲突
	原因: 不知道
	解决: 删掉strtod.c里面的extern  int     errno;

	错误: 剩下一些警告
	原因: 位操作可能越界，不知道为什么，无法解决。
	解决: 无法解决。

	编译成功。

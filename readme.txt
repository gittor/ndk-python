[制作目的]
不是：编译一个可执行文件Python
而是：把python源文件编译成静态库，用在项目里面，简化一些cpp不容易处理的问题，比如xml读写等
不是：需要python的所有特性和库
而是：编译python的标准功能，尽可能地编译一些第三方库进去，比如xml,json,network,proto的解析等。

[制作过程]
从Python-3.5.1源码里拷贝出一些源代码，拷贝目录在下面。
编写Android.mk
用ndk编译

[编译目录]
Include: 编译所需要的头文件
Python:  核心代码
Objects: 内置对象: class, bool int, list tuple dict, iter gen func等基础对象
Modules: 标准库的扩展模块
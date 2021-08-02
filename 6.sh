#!/bin/bash

# test命令

num1=100
num2=100
if test $[num1] -eq $[num2]
then
	echo '两个数相等'
else
	echo '两个数不相等！'
fi

a=5
b=6
result=$[a+b] # 等号两边没有空格i
echo "result 为：$result"


:<<!
	-z 字符长度 == 0
	-n  长度 != 0
!

num1="ru1noob"
num2="runoob"
if test $num1 = $num2
then
	echo '两个字符串相等！'
else
	echo '两个字符串不相等'
fi

:<<!
	-e	是否存在
	-r	是否存在且可读
	-w	是否存在且可写
	-x	是否存在且可执行
	-s	是否存在且有字符
	-d	是否存在且为目录
	-f	是否存在且为普通文件
	-c	是否存在且字符型特殊文件
	-b	是否存在且为块特殊文件
!

cd /bin
if test -e ./bash
then
	echo "文件存在了"
else
	echo "文件不存在了"
fi


:<<!
	! > -a > -o
			或
!

cd /bin
if test -e ./notFile -o -e ./bash
then
	echo '至少一个文件存在'
else
	echo ‘两个文件都不存在’
fi

#!/bin/bash

# Shell 输入/输出重定向

:<<!
	command > file 将输出重定向到file
	command < file 将输入重定向到file
	command >> file  追加方式重定向
	n > file 将文件描述符为n的文件重定向到 file
	n >> file
	n >& m  将输出文件m 和 n 合并
	n <& m  将输入文件m 和 n 合并
	<< tag 将开始标记tag 和 结束标记 tag之间的内容作为输入
!

:<<!

command << delimiter
    document
delimiter
!

cat << EOF
欢迎来到
菜鸟教程
www.runoob.com
EOF

:<<!
	
	如果希望执行某个命令，但又不希望在屏幕上显示输出结果，可以将输出重定向到
	/dev/null
command > /dev/null

/dev/null 是一个特殊的文件，写入到它的内容都会被丢弃；如果尝试从该文件读取内容，那么什么也读不到。但是 /dev/null 文件非常有用，将命令的输出重定向到它，会起到"禁止输出"的效果。

如果希望屏蔽 stdout 和 stderr，可以这样写：



$ command > /dev/null 2>&1


注意：0 是标准输入（STDIN），1 是标准输出（STDOUT），2 是标准错误输出（STDERR）。

这里的 2 和 > 之间不可以有空格，2> 是一体的时候才表示错误输出。

放在 > 后面的& 表示重定向的目标不是一个文件，而是一个文件描述符
!


#!/bin/bash

# printf命令

printf "%-10s %-8s %-4s\n" 姓名 性别 体重kg
printf "%-10s %-8s %-4.2f\n" 郭靖 男 66.1234
printf "%-10s %-8s %-4.2f\n" 杨过 男 48.6543
printf "%-10s %-8s %-4.2f\n" 郭芙 女 47.9876


:<<!
	s 字符串
	d 整型
	c 字符
	f 实数 小数形式输出
	%-10s 宽度为10个字符 -表示左对其，没有则右对齐
	%-4.2f 格式化小数 .2保留2位小数
!

# format-string为双引号
printf "%d %s\n" 1 "abc"

# 单引号与双引号效果一样
printf '%d %s\n' 1 "abc"

# 没有引号也可以输出
printf $s abcdef

# 格式只指定了一个参数，但多出的参数仍然会按照该格式输出，format-string 被重用
printf %s abc def

printf "%s\n" abc def

printf "%s %s %s\n" a b c d e f g h i j

# 如果没有 arguments 那么%s用NULL代替，%d 用 0 代替
printf "%s and %d \n"

:<<!
	\a 警告字符
	\b 后退
	\c 不显示任何结果中结尾的换行字符，在%b格式下有效
	\f 换页（formfeed）
	\n 换行
	\r 回车
	\t 水平制表符
	\v 垂直制表符
	\\ 一个字面上的反斜杠字符
	\ddd 1到3位数八进制值的字符 在格式字符串中有效
	\0ddd 表示1到3位的八进制字符
!

printf "a string, no processing:<%s>\n" "A\nB"

printf "a string, no processing:<%b>\n" "A\nB"

printf "www.runoob.com \a"

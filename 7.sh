#!/bin/bash
# 流程控制

:<<!
	if condition
then
    command1 
    command2
    ...
    commandN 
fi

if [ $(ps -ef | grep -c "ssh") -gt 1 ]; then echo "true"; fi

	ps -ef 打印所有的全格式线程
	grep -c 正则匹配 数量


if condition1
then
    command1
elif condition2 
then 
    command2
else
    commandN
fi
!

a=10
b=20
if [ $a == $b ]
then
	echo "a 等于 b"
elif [ $a -gt $b ]
then
	echo "a 大于 b"
elif [ $a -lt $b ]
then
	echo "a 小于 b"
else
	echo "没有符合的条件"
fi


num1=$[2*3]
num2=$[1+5]
if test $[num1] -eq $[num2]
then
	echo '两个数字相等'
else
	echo '两个数字不相等'
fi


:<<!
	for循环
for var in item1 item2 ... itemN
do
    command1
    command2
    ...
    commandN
done

for var in item1 item2 ... itemN; do command1; command2… done;


当变量值在列表里，for 循环即执行一次所有命令，使用变量名获取列表中的当前取值。命令可为任何有效的 shell 命令和语句。in 列表可以包含替换、字符串和文件名。

in列表是可选的，如果不用它，for循环使用命令行的位置参数。
!

for loop in 1 2 3 4 5
do
	echo "The value is: $loop"
done


for str in This is a string
do
	echo $str
done


:<<!
while condition
do
    command
done
!

int=1
while((int<=5))
do
	echo $int
	let "int++"
done

:<<!
echo '按下 <CTRL-D> 退出'
echo -n '输入你最喜欢的网站名: '
while read FILM
do
	echo "YES!$FILM 是个好网站"
done
!

:<<!
	无限循环
	while :
	do
		command
	done

或
	while true
	do
		command
	done

或
	for(( ; ; ))



until 循环
until 循环一些列命令直到条件为true

until condition
do
	command
done
!

a=0
until [ ! $a -lt 10 ]
do
	echo $a
	a=`expr $a + 1`
done


:<<!
	case ... esac
	多选选择语句多分枝
	;;表示break

case 值 in
模式1)
    command1
    command2
    ...
    commandN
    ;;
模式2）
    command1
    command2
    ...
    commandN
    ;;
esac

!

echo 'put 1~4:'
echo 'your number:'
read aNum
case $aNum in
	1) echo 'you chose 1'
	;;
	2) echo 'you chose 2'
	;;
	3) echo 'you chose 3'
	;;
	4) echo 'you chose 4'
	;;
	*) echo 'you chose nothing'
	;;
esac



site="runoob"

case "$site" in
   "runoob") echo "菜鸟教程"
   ;;
   "google") echo "Google 搜索"
   ;;
   "taobao") echo "淘宝网"
   ;;
esac


:<<!

	break   continue
!

while :
do
	echo -n "输入1 到 5之间的数字："
	read aNum
	case $aNum in
		1|2|3|4|5) echo "你输入的数字为：$aNum!"
		;;
		*) echo "你输入的数字不是1 到 5 之间的 结束"
			break
		;;
	esac
done


while :
do
    echo -n "输入 1 到 5 之间的数字: "
    read aNum
    case $aNum in
        1|2|3|4|5) echo "你输入的数字为 $aNum!"
        ;;
        *) echo "你输入的数字不是 1 到 5 之间的!"
            continue
            echo "游戏结束"
        ;;
    esac
done

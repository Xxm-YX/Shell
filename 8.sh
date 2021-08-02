:<<!
	函数
	[ function ] funname [()]
	{
		action;
		[return int;]
	}
!

#!/bin/bash

demoFun(){
	echo "这是我的第一个shell函数"
}

echo "函数开始----"
demoFun
echo "函数结束----"


funWithReturn(){
	echo "这个函数会对两个数组进行相加"
	echo "输入第一个数字"
	read aNum
	echo "输入第二个数字"
	read anotherNum
	echo "两个数字分别为 $aNum 和 $anotherNum !"
	return $(($aNum + $anotherNum))
}
funWithReturn
## 所有函数在使用前必须定义，函数必须放在脚本开始部分，
## 函数返回值在调用该函数后通过 $? 来获得
echo "输入的两个数字之和为 $? !"

:<<!
	通过$n 的形式来获取

	当n>=10时，需要使用 ${n}获取

	$# 传递脚本或函数的参数个数
	$* 以一个单字符串显示所有向脚本传递的参数
	$$ 脚本运行的当前进程ID号
	$! 后台运行的最后一个进程的ID号
	$@ 与$*相同，但是使用时加引号，并在引号中返回每个参数
	$- 显示当前选项
	$? 显示最后命令退出的状态

		仅对上一条指令负责  要进行保存

	shell 里面 0 代表true
!
funWithParam(){
	 echo "第一个参数为 $1 !"
    echo "第二个参数为 $2 !"
    echo "第十个参数为 $10 !"
    echo "第十个参数为 ${10} !"
    echo "第十一个参数为 ${11} !"
	echo "个数： $# 个"
	echo "作为一个字符串输出所有参数 $* !"
	echo $*;
	echo $@
}
funWithParam 1 2 3 4 5 6 7 8 9 34 73


:<<!
	grep 时从给定字符串中查询匹配内容的命令
	找到了会打印匹配部分 且得到的返回值 $? 为0，如果没有 则返回1

	| 把左边的结果当作参数 再传给右边
!

echo "Hello World !" | grep -e Hello
echo $?
echo "Hello World !" | grep -e Bye
echo $?

echo "aaaaaaaaaaaa"
if echo "Hello World !" | grep -e Hello
then
    echo true
else
    echo false
fi

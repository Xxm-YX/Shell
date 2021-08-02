#!/bin/bash
echo "Hello World!"

your_name="runoob.com"


#for file in `ls /etc`;do
#	echo ${file}
#done
# 或者
#for file in $(ls /etc);do
#	echo ${file}
#done

echo $your_name;

echo ${your_name};

for skill in Ada Coffe Action Java;do
	echo "I am good at ${skill}Script"
done

myUrl="https://www.google.com"
# readonly myUrl
# myUrl="https://www.runoob.com"
# unset myUrl
echo $myUrl

str='this is a string'
echo ${str}


str2='a''b''c'
echo ${str2}

str="Hello,I know you are \"$your_name\"! \n"
echo -e $str

# 使用双引号拼接
greeting="hello, "$your_name" !"
greeting_1="hello, ${your_name} !"
echo $greeting $greeting_1

# 使用单引号拼接
greeting_2='hello, '$your_name' !'
greeting_3='hello, ${your_name} !'
echo $greeting_2 $greeting_3

# 获取字符串长度
string="abcd"
echo ${#string}

# 截取字符串
string="runoob is a great site"
echo ${string:1:4}

# 查找子字符串  查找i或o的位置（哪个字母先出现就计算哪个）
echo `expr index "$string" io`


# 定义数组
array_name=(value0 value1 value2 value3)

array_name1=(
value0
value1
value2
value3
)

array_name2[0]=value0
array_name2[1]=value1
array_name2[n]=valuen


valuen=${array_name[n]}
# 使用@符号可以获取数组中的所有元素
echo ${array_name[@]}



# 获取数组的长度
# 取得数组元素个数
length=${#array_name[@]}
# 或者
length=${#array_name[*]}
# 取得数组单个元素的长度
length=${#array_name[n]}

echo $length

## 多行注释
:<<EOF
注释内容
注释内容
注释内容
EOF

## EOF也可以使用其他符号
:<<!
注释内容
注释内容
注释内容
aaa
!


:<<!
注释内容
注释内容
注释内容
bbb
!








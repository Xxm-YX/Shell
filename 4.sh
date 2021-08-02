# echo命令

#!/bin/sh
read name
echo "$name It is a test"

echo -e "OK! \n" #开启转义
echo "It is a test"

echo -e "OK! \c" #-e 开启转义 \c 不换行
echo "It is a test"

echo '$name\"'

echo `date`

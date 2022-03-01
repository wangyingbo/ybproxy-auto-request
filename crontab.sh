#!/bin/bash
# author wangyingbo

echo "--------current path:-------"
echo $PWD

git pull --rebase
DATE=`date +%Y%m%d%H%M%S`
echo "current git push time: $DATE"
# 插入到最后一行
# echo $DATE >> ./recordtime.txt
# 插入到第一行
sed -i "1i$DATE" ./recordtime.txt
git add recordtime.txt
git commit --allow-empty -m " update auto request ybproxy"
git push 
sleep 1
echo -e "\033[33;40m  ($0) ${TIME}: this shell script execution duration: ${SECONDS}s  \033[0m"
echo "😊😊😊😊😊😊success excute shell😊😊😊😊😊😊"

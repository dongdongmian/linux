#!/bin/sh
# Ping网段所有IP
# 2012/02/05
ip=1 #修改初值
while [ $ip != "254" ]; do 
#yes正常，no主机不存在或不正常
ping 192.168.0.$ip -c 1 -w 1 | grep -q "ttl=" && echo "192.168.0.$ip yes" || echo "192.168.0.$ip no"
ip=`expr "$ip" "+" "1"`
done

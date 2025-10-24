#!/bin/sh
# 故障排除脚本

echo "=== 系统诊断 ==="
echo "1. 检查磁盘空间..."
df -h

echo "2. 检查网络连接..."
ping -c 2 downloads.openwrt.org

echo "3. 检查已安装的包..."
opkg list-installed | wc -l

echo "4. 检查服务状态..."
/etc/init.d/uhttpd status
/etc/init.d/network status

echo "5. 检查网络接口..."
ifstatus lan
ifstatus wan

echo "诊断完成"

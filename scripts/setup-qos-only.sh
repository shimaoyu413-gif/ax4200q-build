#!/bin/sh
# QoS专用安装脚本

echo "=== 安装QoS功能 ==="
opkg update

echo "安装QoS核心组件..."
opkg install luci-app-qos qos-scripts

echo "安装QoS内核模块..."
opkg install kmod-sched-cake kmod-sched-core kmod-ifb

echo "安装QoS过滤支持..."
opkg install iptables-mod-filter iptables-mod-ipopt

echo "安装中文QoS界面..."
opkg install luci-i18n-qos-zh-cn

echo "QoS安装完成！"

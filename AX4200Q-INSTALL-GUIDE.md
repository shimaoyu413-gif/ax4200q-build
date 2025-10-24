# AX4200Q 安装指南

## 您已拥有的资源

1. **最小系统固件** - 在 GitHub Actions Artifacts 中的 `openwrt-ax4200q-minimal`
2. **安装脚本** - 在 `scripts/` 目录下

## 快速开始

### 步骤 1：刷入最小系统固件
1. 下载最小系统固件
2. 通过 LuCI 界面刷入（系统 → 备份/升级）
3. **不保留配置**刷入

### 步骤 2：基础设置
1. 访问 http://192.168.1.1
2. 设置管理员密码
3. 配置网络连接

### 步骤 3：安装完整功能

通过 SSH 登录路由器：

```bash
# 方法 A：复制脚本内容直接执行
# 将 scripts/setup-complete.sh 的内容复制粘贴到 SSH 终端中执行

# 方法 B：下载脚本执行
cd /tmp
# 将 setup-complete.sh 上传到路由器，或使用 wget 下载
wget -O setup-complete.sh "https://raw.githubusercontent.com/你的用户名/仓库名/main/scripts/setup-complete.sh"
chmod +x setup-complete.sh
./setup-complete.sh

# 重启路由器
reboot

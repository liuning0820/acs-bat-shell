#!/bin/bash
# 该脚本会返回以下这些系统信息：
# -主机名称:
echo "***** HOSTNAME Simple INFORMATION *****"
hostname
echo "***** HOSTNAME Details INFORMATION *****"
hostnamectl
echo ""
# -文件系统磁盘空间使用：
echo "***** FILE SYSTEM DISK SPACE USAGE *****"
df -h
echo ""
# -系统空闲和使用中的内存：
echo " ***** FREE AND USED MEMORY *****"
free -k
echo ""
# -系统启动时间：
echo "***** SYSTEM UPTIME AND LOAD *****"
uptime
echo ""
# -登录的用户：
echo "***** CURRENTLY LOGGED-IN USERS *****"
who
echo ""
# -使用内存最多的 5 个进程
echo "***** TOP 5 MEMORY-CONSUMING PROCESSES *****"
ps -eo %mem,%cpu,comm --sort=-%mem | head -n 6
echo ""


# 度量磁盘IO
# install sysstat - system performance tools for Linux
sudo apt install sysstat -y

echo "***** IOSTAT CPU Utilization Report *****"
# an sample CPU Utilization Report 
# %iowait 告诉我们处理器花了多少时间等待IO操作完成而处于闲置状态
# %idle 告诉我们有多少时间处理器处于闲置，数值大，表示还不错
# avg-cpu:  %user   %nice %system %iowait  %steal   %idle
#                   1.15        0.34    1.87        0.20        0.00   96.44
iostat -c
echo ""

echo "***** IOSTAT CPU Device Report *****"
iostat -d
echo ""


echo "***** netstat NETWORK IO *****"
netstat -i -e
echo ""
echo "Done."


#!/bin/bash
# 该脚本会返回以下这些系统信息：
# -主机名称:
echo "***** HOSTNAME INFORMATION *****"
hostnamectl
echo ""
# -文件系统磁盘空间使用：
echo "***** FILE SYSTEM DISK SPACE USAGE *****"
df -h
echo ""
# -系统空闲和使用中的内存：
echo " ***** FREE AND USED MEMORY *****"
free
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
echo "Done."
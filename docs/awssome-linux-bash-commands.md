# Linux Bash Commands

## **Find** 查找命令

Find <指定目录> <指定条件> <指定动作>

```sh

$ find . -name 'my*' -ls
# 搜索当前目录中，所有文件名以my开头的文件，并显示它们的详细信息。

$ find . -type f -mmin -10
#搜索当前目录中，所有过去10分钟中更新过的普通文件。

```

[Find 参考链接](http://www.ruanyifeng.com/blog/2009/10/5_ways_to_search_for_files_using_the_terminal.html)

## **Diff** 文件比较

Usage: diff [OPTION]... FILES

Compare FILES line by line.

```sh

diff -y file1.txt file2.txt


```


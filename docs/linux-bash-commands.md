# Linux Bash Commands

- [Linux Bash Commands](#linux-bash-commands)
  - [cd](#cd)
  - [**Find** 查找命令](#find-查找命令)
  - [**Locate** Find File](#locate-find-file)
  - [**Diff** 文件比较](#diff-文件比较)
  - [**Less**](#less)
    - [Options with less](#options-with-less)
    - [Operation in less](#operation-in-less)

## cd

```sh
# change the working directory to the previous one.
$ cd - 

```

## **Find** 查找命令

Find <指定目录> <指定条件> <指定动作>

```sh

$ find . -name 'my*' -ls
# 搜索当前目录中，所有文件名以my开头的文件，并显示它们的详细信息。

$ find . -type f -mmin -10
#搜索当前目录中，所有过去10分钟中更新过的普通文件。

```

[Find 参考链接](http://www.ruanyifeng.com/blog/2009/10/5_ways_to_search_for_files_using_the_terminal.html)

## **Locate** Find File

```sh

locate the-file-name

```

## **Diff** 文件比较

Usage: diff [OPTION]... FILES

Compare FILES line by line.

```sh

diff -y file1.txt file2.txt


```

## **Less**

Usage: less [option] filename

- Read large text files without cluttering your terminal screen
- Search for text within the file
- Monitor file in real time

### Options with less

```sh

# Display line numbers with less
less -N <filename>

# Monitor files in real time with less
less +F <filename>


# Using less command with pipes
netstat | less


```

### Operation in less

- Up arrow – Move one line up
- Down arrow – Move one line down
- Space or PgDn – Move one page down
- b or PgUp – Move one page up
- g – Move to the beginning of the file
- G – Move to the end of the file
- ng – Move to the nth line

```sh

# Finding text in less
/pattern

```
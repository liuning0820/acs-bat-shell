# acs-bat-bash-shell

[![Build Status](https://travis-ci.org/liuning0820/acs-bat-shell.svg?branch=master)](https://travis-ci.org/liuning0820/acs-bat-shell)

ACS working style (a, means automation) related bat, bash, shell to effective my daily work.

<https://www.windows-commandline.com/category/files/>

## *Unix Shell Families

- Bourne Shell(sh)
  - Replaced by Bourne Again Shell (bash)
- C Shell (csh)
- Korn Shell

## Shebang

This is the first line of any bash script.[<sup>3</sup>](#reference)
You may see different versions of it:

```sh
#! /bin/bash

#! /bin/sh
```

This line tells the operating system which script engine should be used to run the script.

### Bash set -e to stop script on failure

### Bash set -x to print statements executed

src\bash\set-x.sh

## 查看当前系统默认Shell

```sh
echo $SHELL
```

## Reference

1. [Shell Check](./docs/shellcheck.md)
2. [Shellman - Shell scripting snippet library vscode extension](https://marketplace.visualstudio.com/items?itemName=Remisa.shellman)
3. [shebang](https://en.wikipedia.org/wiki/Shebang_(Unix))

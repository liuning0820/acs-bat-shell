# Windows CMD and Linux Bash Command Mapping

CMD           | Bash        | Description
------------- | ------------| -------------
type          | cat         |
copy          | cp          |
[where](#where)         | whereis or find or [locate](#locate)      | Locate file
rename        | mv          | rename a file

## Installation

### where

```cmd

where /R . hexdump.exe

```

### locate

```sh

# https://www.wikihow.com/Find-a-File-in-Linux
sudo apt-get install mlocate
sudo sudo updatedb
locate hexdump
```

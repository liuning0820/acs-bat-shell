#!/bin/bash

# Title:    iterate-string-array.sh
# Description: an sample to deal with array string with whitespace
# Author:   <liuning0820@outlook.com>
# Date:     2019-01-06
# Version:  1.0.0

#Exitcodes
#==========

# 0     no error
# 1     script interrupted
# 2     error description

## Reference https://linuxhint.com/bash_loop_list_strings

# Declare an array of string with type
declare -a StringArray=("Linux Mint" "Fedora" "Red Hat Linux" "Ubuntu" "Debian")
 
# Iterate the string array using for loop
for val in ${StringArray[@]}; do
   echo "$val"
done

 
# Declare a string array with type
declare -a StringArray=("Windows XP" "Windows 10" "Windows ME" "Windows 8.1")
 
# Read the array values with space
for val in "${StringArray[@]}"; do
  echo "$val"
done


DataList=" HTML5, CCS3, BootStrap, JQuery "
Field_Separator=$IFS
 
# set comma as internal field separator for the string list
IFS=,
for val in $DataList;
do
echo "$val"
done
 
IFS=$Field_Separator
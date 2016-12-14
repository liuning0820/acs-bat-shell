#!/bin/bash

# for i in `cat vmlist.txt`; do echo $i; nc -vz $i 9100; done

for i in $(seq 255);
do
    echo "$i";
    nc -vz "192.168.31.$i" 22;
done
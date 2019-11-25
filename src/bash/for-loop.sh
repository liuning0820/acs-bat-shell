#!/bin/bash
for number in {1..30}
do
echo "$number "
if [ $number -gt 9 ]; then
    mv "${number}\ 曲目\ ${number}.wma" ${number}.wma
else
    mv "$0{number}\ 曲目\ ${number}.wma" ${number}.wma
fi
done
exit 0






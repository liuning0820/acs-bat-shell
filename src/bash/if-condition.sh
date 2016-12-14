#!/bin/bash

if [ -f /home/pi/1.txt ]; then
echo "file found"

fi

VAR1="Hi World"
VAR2="HiWorld"
if [ "$VAR1" = "$VAR2" ]; then
    echo "Strings are equal."
else
    echo "Strings are not equal."
fi




domain_list=('Supply Chain Applications Operation' 'Supply Chain Applications Dev' 'WARP Operation' 'HR Application Operation' 'WARP Applications Dev' 'QA' 'DevOps')
for domain in "${domain_list[@]}";
do
    echo "$domain"
    if [ "$domain" == "QA" ] || [ "$domain" == "DevOps" ];then
        my_body=$my_body"<p><strong>"$domain"</strong></p>"
    else
        if [ "$domain" == "Supply Chain Applications Dev" ] || [ "$domain" = "WARP Applications Dev" ]; then
            my_body=$my_body"<p><strong>"$domain"</strong></p><ul><li>Key Features</li><li>Story Points/Workload</li></ul>"
        else
            my_body=$my_body"<p><strong>"$domain"</strong></p><ul><li>Bridge</li><li>Critical Issues</li><li>Release</li><li>Improvement</li></ul>"
        fi
    fi

done
echo $my_body
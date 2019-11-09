#!/bin/bash

function ipv4_addr()
{
    IP_VAR=$(ifconfig eth0 | grep "inet " | tr -s " " ":"|cut -f3 -d ":")
    echo "Host IPv4 address:" "$IP_VAR"
}

echo "Computer name:" "$HOSTNAME"
echo "Currently logged in user:" "$USER"
ipv4_addr
#!/bin/bash

function ipv4_addr()
{
    IP_VAR=$(ifconfig eth0 | grep "inet " | tr -s " " ":"|cut -f3 -d ":")
    echo "Host IPv4 address:" "$IP_VAR"
}

echo "Computer name:" "$HOSTNAME"
echo "Currently logged in user:" "$USER"
ipv4_addr


function greet(){
   echo "Hello $1"
   
}

result=$(greet "Shellman")
echo "$result"

# command substitution: store the output of commands inside variables for further processing.
output=$(ls)
echo "$output"

# command success/failure check
echo "$?"

function fact () {
    result=1
    for((i=2;i<=$1;i++)); do
        result=$((result*i))
    done
    echo $result
    
}

fact 4


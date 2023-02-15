#!/bin/bash
FILE=/home/adminuser/cronoutput
timestamp=$(date +%Y-%m-%d-%H:%M)
netstatvar=$(netstat -a | grep -e tcp -e udp | wc -l)
if test -f "$FILE"; then
    echo "Open_connections;$timestamp;$netstatvar" >> "$FILE"
else
    touch "$FILE"
    echo "Open_connections;$timestamp;$netstatvar" >> "$FILE"
fi
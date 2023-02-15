#!/bin/bash
crontab -l > mycron
echo "00 09 * * 1-5 /home/adminuser/appendtocsv.sh " >> mycron
crontab mycron
rm mycron
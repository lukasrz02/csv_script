#!/bin/bash
crontab -l > mycron
echo "*/3 * * * * /home/adminuser/appendtocsv.sh " >> mycron
crontab mycron
rm mycron
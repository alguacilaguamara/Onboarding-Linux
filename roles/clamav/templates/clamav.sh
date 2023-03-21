#!/bin/sh

/usr/bin/clamscan -i -r /home --log="/var/log/clamav/clamscan-$(date +\%Y-\%m-\%d).log"

line=$(head -n 1 filename)

if [ $line -ne "---------------------" ]; then
do 
        cp /var/log/clamav/clamscan-$(date +\%Y-\%m-\%d).log /home/*/Desktop/clamav/clamscan-$(date +\%Y-\%m-\%d).log
        notify-send "ClamAV analisis is done. Check the log in Desktop/clamav/clamscan"
fi


exit 0
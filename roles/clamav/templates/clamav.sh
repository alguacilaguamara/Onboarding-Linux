#!/bin/sh

filename="/var/log/clamav/clamscan-$(date +\%Y-\%m-\%d).log"

# Update database of ClamAV
/usr/bin/freshclam
#Run the scanner
/usr/bin/clamscan -i -r /home --log=$filename >/dev/null 2>&1

line=$(head -n 1 $filename)

if [ $line -ne "---------------------" ]; then
do 
        cp $filename /home/*/Desktop/clamav/clamscan-$(date +\%Y-\%m-\%d).log
        notify-send "ClamAV analisis is done. Check the log in Desktop/clamav/clamscan"
fi


exit 0
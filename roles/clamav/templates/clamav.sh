#!/bin/sh

/usr/bin/clamscan -i -r /home --log="/var/log/clamav/clamscan-$(date +\%Y-\%m-\%d).log" >/dev/null 2>&1
        && notify-send "ClamAV analisis is done. Check the log in var/log/clamav/clamscan"

exit 0
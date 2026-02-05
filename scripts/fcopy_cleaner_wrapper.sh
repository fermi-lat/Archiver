#!/bin/bash -vxeu
targetDate=$(date -u -d "${baseDate} 1 day ago" -I)
which FcopyCleaner.py
#FcopyCleaner.py --beg "${targetDate} 00:00:00" --end "+24 hours" --unlink --outgoing
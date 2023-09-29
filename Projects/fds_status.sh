#!/bin/bash

# Monitoring free fs disk space
FU=$(df -h | grep "sda6" | awk '{print $5}' | tr -d %)
TO="designssspk@gmail.com"
THRESHOLD=2 # Change this value to the threshold percentage you desire

if [[ $FU -ge $THRESHOLD ]]; then
  echo "Warning..Disk space is low - $FU %" | /usr/sbin/sendmail -t "$TO" <<EOM
Subject: Disk space alert!
To: $TO

Warning..Disk space is low - $FU %
EOM
else
  echo "All Good!"
fi

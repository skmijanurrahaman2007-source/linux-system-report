#!/bin/bash

OUT=system-report.txt

echo "System Report" > $OUT
date >> $OUT
echo "" >> $OUT

echo "Hostname:" >> $OUT
hostname >> $OUT
echo "" >> $OUT

echo "Kernel version:" >> $OUT
uname -r >> $OUT
echo "" >> $OUT

echo "Disk usage:" >> $OUT
df -h >> $OUT
echo "" >> $OUT

echo "Memory usage:" >> $OUT
free -h >> $OUT
echo "" >> $OUT

echo "Top processes:" >> $OUT
ps aux --sort=-%mem | head -n 6 >> $OUT

echo "Report saved in $OUT"

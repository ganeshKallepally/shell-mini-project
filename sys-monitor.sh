#!/bin/bash

echo "========== System Health Report =========="
echo "Date & Time      : $(date)"
echo "Uptime           : $(uptime -p)"
echo "Hostname         : $(hostname)"
echo

echo "---------- CPU Usage ----------"
top -bn1 | grep "Cpu(s)" | awk '{print "CPU Load: " $2 "%"}'
echo

echo "---------- Memory Usage ----------"
free -h
echo

echo "---------- Disk Usage ----------"
df -h | grep '^/dev/'
echo

echo "---------- Top 5 Memory-Consuming Processes ----------"
ps aux --sort=-%mem | head -n 6
echo "=============================================="


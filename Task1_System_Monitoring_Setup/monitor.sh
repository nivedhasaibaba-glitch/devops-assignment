#!/bin/bash
 
echo "===== SYSTEM MONITOR REPORT =====" >> monitor.log

date >> monitor.log
 
echo "CPU & MEMORY" >> monitor.log

top >> monitor.log
 
echo "DISK USAGE" >> monitor.log

df -h >> monitor.log
 
echo "TOP PROCESSES" >> monitor.log

ps aux --sort=-%cpu | head >> monitor.log
 

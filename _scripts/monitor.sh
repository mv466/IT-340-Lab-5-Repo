#!/bin/bash

LOG_DIR="/home/developers/Lab_5_workspace/logs"
LOG_FILE="$LOG_DIR/system.log"

mkdir -p "$LOG_DIR"

{
echo "==== System Monitor - $(date '+%Y-%m-%d %H:%M:%S') ===="
echo
echo "Uptime:"
uptime
echo
echo "Memory usage:"
free -h
echo
echo "Disk usage:"
df -h
echo "-------------------------------------------------------"
echo
} >> "$LOG_FILE"

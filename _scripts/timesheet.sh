
#! /bin/bash

LOG_FILE="/home/developers/Lab_5_workspace/logs/timesheet.log"
DATA_FILE="/home/developers/Lab_5_workspace/data/timesheet.log"


mkdir -p /home/developers/Lab_5_workspace/logs
mkdir -p /home/developers/Lab_5_workspace/data

read -p "First Name: " fname
read -p "Last Name: " lname
read -p "Number of Hours worked: " hours
read -p "Description of Work: " description

echo 
echo "Timesheet Entry Recorded."

{
echo "==== Timesheet Entry - $(date '+%Y-%m-%d %H:%M:%S') ===="
echo "First Name:       $fname"
echo "Last Name:        $lname"
echo "Hours Worked:     $hours"
echo "Work Description: $description"
echo "--------------------------------------------------------"
echo
} >> "$LOG_FILE"



cp "$LOG_FILE" "$DATA_FILE"

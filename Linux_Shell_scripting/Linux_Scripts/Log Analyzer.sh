#!/bin/bash
 logfile="/path/to/logfile.log"
 # Extract lines with "ERROR" from the log file
 grep "ERROR" "$logfile" > error_log.txt
 echo "Error log created."

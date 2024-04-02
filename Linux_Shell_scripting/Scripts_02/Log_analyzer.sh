#!/bin/bash
logfile="/path/to/logfile.log"

grep "ERROR" "$logfile" > error_log.txt
echo "Error log created." 
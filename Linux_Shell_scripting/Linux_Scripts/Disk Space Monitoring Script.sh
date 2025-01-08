 #!/bin/bash
 threshold=90
 # Monitor disk usage and trigger alert if threshold exceeded
 disk_usage=$(df-h | grep "/dev/sda1" | awk '{print $5}' | cut-d%-f1)
 if [ "$disk_usage"-gt "$threshold" ]; then
 echo "High disk usage detected: $disk_usage%"
 # Add alert/notification logic here
 fi

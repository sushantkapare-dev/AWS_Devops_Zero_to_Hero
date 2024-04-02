#!/bin/bash
# --------------------------------------------------------------------
# Script Name: mongodb_log_rotate_and_cleanup.sh
# Author: Shivam Agihotri
# Date: (29 FEB 2024)
# Description: Rotates MongoDB logs and cleans up older versions.
# --------------------------------------------------------------------
# Define MongoDB connection details (improve security with secrets management)
MONGODB_USERNAME="<USERNAME>"
MONGODB_PASSWORD="<PASSWORD>" # Consider using environment variables or a
secure store
# Trigger MongoDB log rotation
mongo_command="db.adminCommand({ logRotate: 1 })"
mongosh --eval "$mongo_command" -u "$MONGODB_USERNAME" -p
"$MONGODB_PASSWORD"
# Wait for log rotation to complete (adjust based on expected rotation time)
sleep 120
# Define search criteria for old log files
log_dir="/var/log/mongodb/"
log_prefix="mongod.log.2024"
max_file_age=5 # Files older than 5 days will be removed
# Find and delete old log files
find "$log_dir" -name "$log_prefix*" -mtime +"$max_file_age" -exec rm -rf {} \;
echo "MongoDB log rotation and cleanup completed."

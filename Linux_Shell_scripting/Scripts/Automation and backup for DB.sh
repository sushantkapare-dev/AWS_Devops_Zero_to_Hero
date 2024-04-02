#!/bin/sh
# It sets the current date and time in a specific format and assigns them to the variable now.
now="$(date +'%d-%m-%Y_%H :%M' )"
filename1="Mongo_bk_$now"
backupfolder="/home/shivam/mongo_backup/"
fullpathbackupfile1="$backupfolder/$filename1"
logfile="$backupfolder/"backup_log_"$(date +'%Y_%m' )".txt
echo "mongodump started at $(date +'%d-%m-%Y %H:%M')" >> "$logfile"
mongodump --username ‹your_username> --password ‹your_password> --gzip --
out="$fullpathbackupfile1" --authenticationDatabase admin
echo "mongodump finished at $(date +'%d-%m-%Y %H:%M :%S')" >> "$logfile"
chown shivam "$fullpathbackupfile1"
chown shivam "$logfile"
echo "file permission changed" >> "$logfile"
find "$backupfolder" -name "Mongo_bk*" -mtime +1 -exec rm -rf {} \; echo "old files deleted" >>
"$logfile"
echo "operation finished at $(date +'%d-%m-%Y %H :%M:%S') ">> "$logfile"
echo "*******" >> "$logfile"
exit 0

#!/bin/bash
# --------------------------------------------------------------------
# Script Name: ssh_certificate_lets_encrypt.sh
# Author: Shiivam Agnihotri
# Date: (12 March 2024)
# Description: Validate and Renew SSL certificate using Let’s Encrypt.
# --------------------------------------------------------------------
# Define domain and email variables
DOMAIN="devops-ocean.com"
EMAIL="contact@devops-ocean.com"
# Define the path to the Let's Encrypt script
LE_SCRIPT="/usr/bin/certbot"
# Define the path to the SSL certificate
CERTIFICATE_PATH="/etc/letsencrypt/live/$DOMAIN/fullchain.pem"
# Define the path to the certificate renewal log file
LOG_FILE="/var/log/certbot-renewal.log"
# Check if the certificate needs renewal
if ! $LE_SCRIPT renew --dry-run > $LOG_FILE 2>&1; then
 # Certificate needs renewal, execute renewal
 echo "$(date +"%Y-%m-%d %H:%M:%S") - Certificate for $DOMAIN needs renewal" >>
$LOG_FILE

 # Execute certificate renewal
 $LE_SCRIPT renew --noninteractive --agree-tos --email $EMAIL >> $LOG_FILE 2>&1

 # Check if renewal was successful
 if [ $? -eq 0 ]; then
 echo "$(date +"%Y-%m-%d %H:%M:%S") - Certificate for $DOMAIN successfully renewed"
>> $LOG_FILE
 # Restart web server to apply changes
 systemctl restart nginx
 else
 echo "$(date +"%Y-%m-%d %H:%M:%S") - Certificate renewal for $DOMAIN failed" >>
$LOG_FILE
 fi
else
 # Certificate doesn't need renewal
 echo "$(date +"%Y-%m-%d %H:%M:%S") - Certificate for $DOMAIN is up to date, no renewal
needed" >> $LOG_FILE
fi

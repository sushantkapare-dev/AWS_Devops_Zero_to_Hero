#!/bin/bash
 file="/path/to/file.txt"
 # Encrypt file using AES-256-CBC
 openssl enc-aes-256-cbc-salt-in "$file"-out "$file.enc"
 echo "File encrypted: $file.enc"

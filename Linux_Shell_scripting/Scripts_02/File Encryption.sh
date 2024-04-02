#!/bin/bash
file="/path/to/file.txt"
 
openssl enc -aes-256-cbc -salt -in "$file" -out
"$file.enc"
echo "File encrypted: $file.enc"
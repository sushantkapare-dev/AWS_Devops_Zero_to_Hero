#!/bin/bash
# Check password expiry for users with bash shell
IFS=$'\n'
for user in $(cat /etc/passwd | grep "/bin/bash" | cut -d: -f1); do
password_expires=$(chage -l "$user" | grep "Password expires" |
awk '{print $4}')
echo "User: $user, Password Expires: $password_expires"
done
unset IFS

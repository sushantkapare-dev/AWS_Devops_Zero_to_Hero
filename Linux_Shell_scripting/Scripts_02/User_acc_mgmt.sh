#!/bin/bash
username="newuser"

if id "$username" &>/dev/null; then
 echo "User $username already exists."
else
 useradd -m "$username"
 echo "User $username created."
Fi 
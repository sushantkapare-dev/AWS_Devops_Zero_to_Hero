 #!/bin/bash
 username="newuser"
 # Check if user exists; if not, create new user
 if id "$username" &>/dev/null; then
 echo "User $username already exists."
 else
 useradd-m "$username"
 echo "User $username created."
fi

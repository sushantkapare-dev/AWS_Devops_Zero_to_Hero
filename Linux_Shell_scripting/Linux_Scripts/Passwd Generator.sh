 #!/bin/bash
 length=12
 # Generate a random password
 password=$(openssl rand-base64 $length)
 echo "Generated password: $password"

#!/bin/bash
length=12

password=$(openssl rand -base64 12)
echo "Generated password: $password" 
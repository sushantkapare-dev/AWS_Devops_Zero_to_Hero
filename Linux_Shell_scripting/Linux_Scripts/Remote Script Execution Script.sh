#!/bin/bash
remote_server="user@remote-server"
remote_script="/path/to/remote/script.sh"
# Execute a script on a remote server via SSH
ssh "$remote_server" "bash -s" < "$remote_script"
echo "Remote script executed."

 #!/bin/bash
 output_file="system_info.txt"
 # Gather system information and save to a file
 echo "System Information:" > "$output_file"
 echo "-------------------" >> "$output_file"
 echo "Hostname: $(hostname)" >> "$output_file"
 echo "OS: $(uname-a)" >> "$output_file"
 echo "Memory: $(free-h)" >> "$output_file"
 echo "Disk Space: $(df-h)" >> "$output_file"
 echo "System info saved to $output_file."

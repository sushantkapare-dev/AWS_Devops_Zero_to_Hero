 #!/bin/bash
 output_file="cpu_usage_log.txt"
 # Log current CPU usage to a file with timestamp
 echo "$(date) $(top-bn1 | grep 'Cpu(s)' | awk '{print $2}' | cut-d.-f1)%" >> "$output_file"
 echo "CPU usage logged."

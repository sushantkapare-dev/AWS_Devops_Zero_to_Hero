 #!/bin/bash
 website="https://example.com"
 # Check if website is accessible
 if curl--output /dev/null--silent--head--fail "$website"; then
 echo "Website is up."
 else
 echo "Website is down."
 fi

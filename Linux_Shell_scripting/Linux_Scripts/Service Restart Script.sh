#!/bin/bash
service_name="your_service"
# Restart a specified service
sudo systemctl restart "$service_name"
echo "Service $service_name restarted."

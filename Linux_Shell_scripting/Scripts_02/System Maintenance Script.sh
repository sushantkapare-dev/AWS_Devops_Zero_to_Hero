#!/bin/bash
# Clean up temporary files
rm -rf /tmp/*
# Update packages
apt-get update && apt-get upgrade -y
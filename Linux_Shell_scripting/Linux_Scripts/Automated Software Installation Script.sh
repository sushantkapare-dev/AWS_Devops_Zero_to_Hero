#!/bin/bash
 packages=("package1" "package2" "package3")
# Install listed packages using apt-get
 for package in "${packages[@]}"; do
 sudo apt-get install "$package"-y
 done
 echo "Packages installed successfully."

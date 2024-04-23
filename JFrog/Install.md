# Install JFrog on Ubuntu 22.04

```

#!/bin/bash
sudo apt update

# Fetch and add the JFrog public GPG key
wget -qO - https://releases.jfrog.io/artifactory/api/gpg/key/public | sudo
apt-key add -

# Determine your distribution
# Add JFrog Artifactory repository to sources.list
echo "deb https://releases.jfrog.io/artifactory/artifactory-debs ${DISTRO}
main" | sudo tee -a /etc/apt/sources.list

# Update package lists
sudo apt-get update

# Install JFrog Artifactory C++ CE
sudo apt-get install jfrog-artifactory-cpp-ce -y

```

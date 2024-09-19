#!/bin/bash

# Update package list
sudo apt update

sudo apt upgrade

echo "Installing pyhton dependecies for compose ...."

sudo apt install -y python3 python3-pip python3-venv python3-setuptools -y

# Check if Docker Compose is installed
echo "Downloading Docker Compose..."
sudo curl -L "https://github.com/docker/compose/releases/download/$(curl -s https://api.github.com/repos/docker/compose/releases/latest | grep tag_name | cut -d '"' -f 4)/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

# Ensure the binary is executable
sudo chmod 777 /usr/local/bin/docker-compose

# Verify the installation
if command -v docker-compose &> /dev/null; then
    echo "Docker Compose has been installed successfully."
else
    echo "Failed to install Docker Compose."
fi

# Verify Docker Compose installation
docker-compose --version

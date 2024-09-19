#!/bin/bash

# Update package list
sudo apt update

sudo apt upgrade

echo "Installing pyhton dependecies for compose ...."

sudo apt install -y python3 python3-pip python3-venv python3-setuptools -y


# Verify the installation
if ! command -v docker-compose &> /dev/null; then
    echo "Docker Compose not found, installing..."

    # Download the latest Docker Compose binary
    sudo curl -L "https://github.com/docker/compose/releases/download/$(curl -s https://api.github.com/repos/docker/compose/releases/latest | grep tag_name | cut -d '"' -f 4)/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    
    # Make the binary executable
    sudo chmod 777 /usr/local/bin/docker-compose

    echo "Docker Compose has been installed successfully."
else
    echo "Docker Compose is already installed."
fi

# Verify Docker Compose installation
docker-compose --version

#!/bin/bash

# Update package list
sudo apt update

sudo apt upgrade

sudo apt install -y python3 python3-pip python3-venv python3-setuptools -y

# Check if Docker Compose is installed
if ! command -v docker-compose &> /dev/null; then
    echo "Docker Compose not found, installing..."
    sudo apt install -y docker-compose
else
    echo "Docker Compose is already installed."
fi

# Verify Docker Compose installation
docker-compose --version

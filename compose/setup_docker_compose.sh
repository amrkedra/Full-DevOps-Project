#!/bin/bash

# Update package list
sudo apt update

# Check if Docker Compose is installed
if ! command -v docker-compose &> /dev/null; then
    echo "Docker Compose not found, installing..."
    sudo apt install -y docker-compose
else
    echo "Docker Compose is already installed."
fi

# Verify Docker Compose installation
docker-compose --version

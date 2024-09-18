#!/bin/bash

# Update package list
sudo apt-get update

# Install Docker Compose if not already installed
if ! command -v docker-compose &> /dev/null; then
    sudo apt-get install -y docker-compose
fi

# Add other Docker Compose setup commands here if needed

#!/bin/bash

# Update package list
apt-get update

# Install Docker Compose if not already installed
if ! command -v docker-compose &> /dev/null; then
    apt-get install -y docker-compose
fi

# Add other Docker Compose setup commands here if needed

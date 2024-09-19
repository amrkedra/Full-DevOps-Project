#!/bin/bash


sudo apt-get update


if ! command -v docker-compose &> /dev/null; then
    sudo apt-get install -y docker-compose
fi

sudo apt-get update
sudo apt-get install -y python3-distutils


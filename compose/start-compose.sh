#!/bin/bash

echo "Starting MySQL services..."
docker-compose -f /home/amrkedra/Full-DevOps-Project/compose/my-sql-compose.yaml up -d 

echo "Waiting for MySQL to stabilize..."
sleep 15

echo "Starting Flask and PHPMyAdmin services..."
docker-compose -f /home/amrkedra/Full-DevOps-Project/compose/flask-php-compose.yaml up -d 

echo "Waiting for Flask and PHPMyAdmin to stabilize..."
sleep 15

echo "Starting NGINX Proxy..."
docker-compose -f /home/amrkedra/Full-DevOps-Project/compose/nginx-proxy-compose.yaml up -d 

echo "All services started successfully"
sudo apt update
sudo apt install apache2-utils

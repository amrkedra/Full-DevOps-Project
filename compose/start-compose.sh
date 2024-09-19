#!/bin/bash

# Start MySQL service
echo "Starting MySQL services..."
docker-compose -f /home/amrkedra/Full-DevOps-Project/compose/my-sql-compose.yaml up -d 
if [ $? -ne 0 ]; then
    echo "Failed to start MySQL services"
    exit 1
fi

# Wait for MySQL to stabilize
echo "Waiting for MySQL to stabilize..."
sleep 20

# Start Flask and PHPMyAdmin
echo "Starting Flask and PHPMyAdmin services..."
docker-compose -f /home/amrkedra/Full-DevOps-Project/compose/flask-php-compose.yaml up -d 
if [ $? -ne 0 ]; then
    echo "Failed to start Flask and PHPMyAdmin services"
    exit 1
fi

# Wait for Flask and PHPMyAdmin to stabilize
echo "Waiting for Flask and PHPMyAdmin services to stabilize..."
sleep 15

# Start NGINX Proxy
echo "Starting NGINX Proxy..."
docker-compose -f /home/amrkedra/Full-DevOps-Project/compose/nginx-proxy-compose.yaml up -d 
if [ $? -ne 0 ]; then
    echo "Failed to start NGINX Proxy"
    exit 1
fi

# Final status check
echo "All services started successfully. Checking status of containers..."
docker-compose ps
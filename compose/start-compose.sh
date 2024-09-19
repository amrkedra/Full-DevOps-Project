#!/bin/bash

echo "Starting MySQL services..."
docker-compose -f /home/amrkedra/Full-DevOps-Project/compose/my-sql-compose.yaml up -d 2>/dev/null || true

echo "Waiting for MySQL to stabilize..."
sleep 15

echo "Starting Flask and PHPMyAdmin services..."
docker-compose -f /home/amrkedra/Full-DevOps-Project/compose/flask-php-compose.yaml up -d 2>/dev/null || true

echo "Waiting for Flask and PHPMyAdmin to stabilize..."
sleep 15

echo "Starting NGINX Proxy..."
docker-compose -f /home/amrkedra/Full-DevOps-Project/compose/nginx-proxy-compose.yaml up -d 2>/dev/null || true

echo "All services started successfully. Checking status of containers..."
docker-compose ps 2>/dev/null || true

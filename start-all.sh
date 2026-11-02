#!/bin/bash

set -e

echo "Starting Uptime Kuma"

cd docker-compose/uptime-kuma
docker compose up -d

echo "Starting Monitoring"

cd ../monitoring
docker compose up -d

echo "Starting Calorie Tracker"

cd ../calorie-tracker
docker compose up -d

echo "Done"
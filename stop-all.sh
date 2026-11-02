#!/bin/bash

set -e

cd docker-compose/uptime-kuma
docker compose down

cd ../monitoring
docker compose down

cd ../calorie-tracker
docker compose down
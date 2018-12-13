#!/bin/bash
docker-compose build
docker-compose up -d
echo "Start PHP"
./php.sh apierp






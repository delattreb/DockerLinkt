#!/bin/bash
cd docker
docker-compose build
docker-compose up -d
cd ..
echo "Start PHP"
./php.sh
docker stop sonarqube
docker stop mssql




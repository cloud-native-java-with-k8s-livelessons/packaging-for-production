#!/usr/bin/env bash

echo "Using a raw Dockerfile to build the application"

PREFIX=cnj
IMAGE=raw-docker 
IMAGE_NAME=$PREFIX/$IMAGE

mvn -DskipTests=true clean package && cp -r target/*jar target/application.jar
docker build -t $IMAGE_NAME .
docker run -p8082:8082 -e SERVER_PORT=8082 cnj/raw-docker

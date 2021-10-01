#!/usr/bin/env bash

echo "Using the Spotify Maven plugin to build this image"
PREFIX=cnj
IMAGE=spotify2
IMAGE_NAME=$PREFIX/$IMAGE

./mvnw -DskipTests=true clean package dockerfile:build -DimageName=$IMAGE_NAME
docker run  -p 8081:8081 -e SERVER_PORT=8081 $IMAGE_NAME


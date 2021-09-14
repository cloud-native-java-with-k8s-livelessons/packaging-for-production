#!/usr/bin/env bash

echo "Using the Google Jib Maven plugin to build this image"
PREFIX=cnj
IMAGE=jib
IMAGE_NAME=$PREFIX/$IMAGE

./mvnw -DskipTests=true clean package jib:dockerBuild -Djib.to.image=$IMAGE_NAME
docker run  -p 8081:8081 -e SERVER_PORT=8081 $IMAGE_NAME


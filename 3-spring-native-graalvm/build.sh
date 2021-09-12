#!/usr/bin/env bash

echo "Using the Spring Boot Maven plugin and GraalVM to build this image"
PREFIX=cnj
IMAGE=graalvm
IMAGE_NAME=$PREFIX/$IMAGE

./mvnw -DskipTests=true clean package spring-boot:build-image -Dspring-boot.build-image.imageName=$IMAGE_NAME
docker run  -p 8084:8084 -e SERVER_PORT=8084 $IMAGE_NAME


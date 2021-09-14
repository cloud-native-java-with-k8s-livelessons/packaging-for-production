#!/usr/bin/env bash

echo "Using the pack cli to build this image"

PREFIX=cnj
IMAGE=buildpacks-pack
IMAGE_NAME=$PREFIX/$IMAGE

pack config default-builder paketobuildpacks/builder:base
pack build $IMAGE_NAME --path .
docker run  -p 8080:8080 -e SERVER_PORT=8080  $IMAGE_NAME
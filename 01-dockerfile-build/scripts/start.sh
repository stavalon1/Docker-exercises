#!/usr/bin/env bash

# change into the parent directory, if not there already
cwd="$(dirname $(dirname $(readlink -f "$0")))"
cd $cwd

# constants
IMAGE_NAME="basicbuild"
CONTAINER_NAME="${IMAGE_NAME}"

# build new image
docker run -d --name ${CONTAINER_NAME} -p 3031:3030 ${IMAGE_NAME}:latest

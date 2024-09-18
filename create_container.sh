#!/bin/bash

CONTAINER_NAME="vuln_server_container"
IMAGE_NAME="vuln_server"

# Stop and remove the existing container if it exists
if [ "$(docker ps -aq -f name=$CONTAINER_NAME)" ]; then
    docker stop $CONTAINER_NAME
    docker rm $CONTAINER_NAME
fi

# Run a new container with the same name
docker build -t $IMAGE_NAME .
# docker compose down
# docker compose up
docker container run --privileged -p 3000:7777 -it --name $CONTAINER_NAME $IMAGE_NAME bash
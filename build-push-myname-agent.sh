#!/bin/bash
# Build and push Jenkins agent Docker image

IMAGE_NAME="myname/jenkins-agent:latest"

docker build -t $IMAGE_NAME .
docker push $IMAGE_NAME

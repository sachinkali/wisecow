#!/bin/bash

# Set variables
IMAGE_NAME="sachinkali/wisecow"
TAG="latest"

# Navigate to the directory containing the Dockerfile
cd /home/kali/Desktop/wisecow

# Build the Docker image
docker build -t $IMAGE_NAME:$TAG .

# Log in to Docker Hub
docker login

# Push the Docker image to Docker Hub
docker push $IMAGE_NAME:$TAG

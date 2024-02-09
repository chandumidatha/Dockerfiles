#!/bin/bash

# Define variables for container names, port numbers, and Docker images.
CONTAINER_NAME_1="devops-gateway"
CONTAINER_NAME_2="devops-authorize"
PORT_NUMBER_1="3000"
PORT_NUMBER_2="3001"
IMAGE_NAME_1="javawebapp/devops:gateway"
IMAGE_NAME_2="javawebapp/devops:authorize"

# Create Docker containers and map ports to the host.
echo "Creating Docker container for Gateway service..."
docker run -d -p $PORT_NUMBER_1:$PORT_NUMBER_1 --name $CONTAINER_NAME_1 $IMAGE_NAME_1

echo "Creating Docker container for Authorization service..."
docker run -d -p $PORT_NUMBER_2:$PORT_NUMBER_2 --name $CONTAINER_NAME_2 $IMAGE_NAME_2

# Define the network name.
NETWORK_NAME="devops-network"

# Create a Docker network.
echo "Creating Docker network '$NETWORK_NAME'..."
docker network create $NETWORK_NAME

# Attach containers to the network.
echo "Attaching containers to the network '$NETWORK_NAME'..."
docker network connect $NETWORK_NAME $CONTAINER_NAME_1
docker network connect $NETWORK_NAME $CONTAINER_NAME_2

echo "Setup completed successfully!"

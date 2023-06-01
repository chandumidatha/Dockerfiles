#!/bin/bash

#Define the variables for the container name, port number, and Docker image.
CONTAINER_NAME_1="devops:gateway"
CONTAINER_NAME_2="devops:authorize"
PORT_NUMBER_1="3000"
PORT_NUMBER_2="3001"
IMAGE_NAME_1="javawebapp/devops:gateway"
IMAGE_NAME_2="javawebapp/devops:authorize"

#Create the Docker container and map the port to the host.
docker run -d -p $PORT_NUMBER_1:$PORT_NUMBER_1 --name $CONTAINER_NAME_1 $IMAGE_NAME_1

#Create the Docker container and map the port to the host.
docker run -d -p $PORT_NUMBER_2:$PORT_NUMBER_2 --name $CONTAINER_NAME_2 $IMAGE_NAME_2

#Define the variables for the network names.
NETWORK_NAME="core"

#Create the Docker network.
docker network create $NETWORK_NAME

#Attach the container to the network.
docker network connect $NETWORK_NAME $CONTAINER_NAME_1 $CONTAINER_NAME_2

#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
 #dockerpath="mohmagdy1016/devopsudacityproject:latest"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create -f /home/mohmagdy/projWorkingDir/kubpod.yml

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward pods/first-api 8000:80

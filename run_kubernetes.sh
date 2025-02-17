#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath="daflyer/prj4micro"
# Step 2
# Run the Docker Hub container with kubernetes
kubectl run prj4micro --image=$dockerpath --port=80

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host

kubectl port-forward prj4micro --address 0.0.0.0 8000:80

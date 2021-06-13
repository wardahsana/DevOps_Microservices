#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=wardahsana/dlocal

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run testcontainer --image=$dockerpath --port=80

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
#-previous-kubectl port-forward testcontainer 8002:80
kubectl expose deployment testcontainer --type=LoadBalancer --port=8002 --target-port=80

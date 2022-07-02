#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=todak2000/udacitycloudprojectfour

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run udacitycloudprojectfour --image=$dockerpath 

# Step 3:
# List kubernetes pods
kubectl get pods
# Step 4:
# Forward the container port to a host
kubectl port-forward udacitycloudprojectfour 8000:80
# kubectl expose deployment udacitycloudprojectfour --type=LoadBalancer --port=80
# minikube service udacitycloudprojectfour



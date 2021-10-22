#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="maged1995/udacity_microservice_repo"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run flaskskearlndemo\
    --image=$dockerpath\
    --port=80 --labels app=flaskskearlndemo\
    # -o yaml > output_txt_files/kubernetes_out.yaml

# Step 3:
# List kubernetes pods
kubectl get pods &>> output_txt_files/kubernetes_out.txt

# Step 4:
# Forward the container port to a host
kubectl port-forward flaskskearlndemo 8000:80 &>> output_txt_files/kubernetes_out.txt

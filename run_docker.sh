#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build --tag maged1995/udacity_microservice_repo .

# Step 2: 
# List docker images
docker image ls

# Step 3: 
# Run flask app

docker run -p 8000:80 -d maged1995/udacity_microservice_repo
docker logs -f $(docker ps -q | head -1) &>> output_txt_files/docker_out.txt
# docker export --output="output_txt_files/docker_out.txt" $(docker ps -q | head -1)
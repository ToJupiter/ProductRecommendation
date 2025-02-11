#!/bin/bash

# Check if the 'docker' command is available
if ! command -v docker &> /dev/null; then
    echo "Docker is not installed or not available in your PATH."
    echo "Please install Docker by following the instructions at https://docs.docker.com/get-docker/"
    exit 1
fi

# Check if Docker daemon is running
if ! docker info &> /dev/null; then
    echo "Docker daemon is not running. Please start Docker and try again."
    exit 1
fi

# Run the StarRocks container
echo "Starting StarRocks container..."
docker run -p 9030:9030 -p 8030:8030 -p 8040:8040 -itd \
    --name quickstart starrocks/allin1-ubuntu

# Check if the container started successfully
if [ $? -eq 0 ]; then
    echo "StarRocks container started successfully!"
else
    echo "Failed to start the StarRocks container. Please check the Docker logs for more information."
    exit 1
fi

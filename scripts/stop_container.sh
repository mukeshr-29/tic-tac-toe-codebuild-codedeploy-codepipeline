#!/bin/bash
set -e
docker ps
echo "check whether the container is running"
container_id=$(docker ps | awk 'NR==2 {print $1}')
echo "remove container"
docker rm - "$container_id"

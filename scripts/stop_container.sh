#!/bin/bash
set -e
docker ps
echo "check whether the container is running"
container_id=$(docker ps | awk 'NR > 1 {print $1}')
echo "remove container"
docker rm -f "$container_id"


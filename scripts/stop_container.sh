set -e

echo "Listing Docker containers:"
docker ps

echo "Checking whether the container is running..."
container_id=$(docker ps --format "{{.ID}}" | head -n 1)

if [ -z "$container_id" ]; then
    echo "No running containers found."
else
    echo "Removing container with ID: $container_id"
    docker rm -f "$container_id"
fi
#!/bin/bash

# List of Docker images to push
images=(
"image_name:tag"  
)

# Pull all images
for image in "${images[@]}"; do
    echo "pulling $image..."
    docker pull "$image"
done

echo "All images have been pulled."

#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID
#dockerpath=""

# Step 2
# Run in Docker Hub container with kubernetes


# Step 3:
# List kubernetes pods

# Step 4:
# Forward the container port to host


<<<<<<< HEAD
=======
#!/usr/bin/env bash

dockerpath="wardahsana/flasksklearn"

# Run in Docker Hub container with kubernetes
kubectl run flaskskearlndemo\
    --generator=run-pod/v1\
    --image=$dockerpath\
    --port=80 --labels app=flaskskearlndemo

# List kubernetes pods
kubectl get pods

# Forward the container port to host
kubectl port-forward flaskskearlndemo 8000:80
>>>>>>> 60771a2330e609019d5c3f1eddb85438dd9c2746

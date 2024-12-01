#!/bin/bash

# Display a message to let the user know the deployment is starting
echo "Starting the deployment..."

# Apply the Kubernetes configuration file to create the resources
kubectl apply -f pod-template.yaml

# Display a message to confirm that the deployment is complete
echo "Deployment is done! Your resources are created in Kubernetes."

#!/bin/bash

echo "Creating a test pod..."
kubectl apply -f pod-template.yaml
echo "Test pod provisioned!"

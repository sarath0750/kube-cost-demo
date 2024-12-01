#!/bin/bash

echo "Validating deployment..."

echo "Checking if Kubecost pods are running..."
kubectl get pods -n kubecost | grep Running

echo "Checking if Grafana pods are running..."
kubectl get pods -n grafana | grep Running

echo "Checking if Prometheus pods are running..."
kubectl get pods -n prometheus | grep Running

echo "Validation complete! If all pods are running, your setup is successful."

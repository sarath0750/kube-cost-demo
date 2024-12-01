#!/bin/bash

echo "Welcome to the Kubecost and Grafana Setup!"
echo "This script will help you deploy Kubecost and Grafana on a Minikube Kubernetes cluster."

echo "Step 1: Starting Minikube (if not already running)..."
minikube start

echo "Step 2: Adding Helm repositories..."
helm repo add kubecost https://kubecost.github.io/cost-analyzer/
helm repo update

echo "Step 4: Installing Grafana..."
helm install grafana grafana/grafana --namespace grafana --create-namespace

echo "Step 5: Installing Kubecost..."
helm install kubecost kubecost/cost-analyzer --namespace kubecost --create-namespace

echo "Step 6: Exposing Services..."
kubectl expose deployment kubecost-cost-analyzer --type=NodePort --name=kubecost-service --namespace=kubecost
kubectl expose deployment grafana --type=NodePort --name=grafana-service --namespace=grafana

echo "Setup complete! Access the services using the following URLs:"
echo "Grafana: $(minikube service grafana-service --url -n grafana)"
echo "Kubecost: $(minikube service kubecost-service --url -n kubecost)"

#!/bin/bash

# Check if Helm is installed
if ! command -v helm &> /dev/null
then
    echo "Helm is not installed. Installing Helm..."
    # Install Helm
    curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
    chmod 700 get_helm.sh
    ./get_helm.sh
    echo "Helm has been installed."
else
    echo "Helm is already installed."
fi

# Add the official stable Helm repository
helm repo add stable https://charts.helm.sh/stable

# Update the Helm repositories
helm repo update

# Deploy Redis server using Helm chart on Minikube cluster
echo "Deploying Redis server using Helm chart on Minikube cluster..."
helm install my-redis stable/redis

# Verify the deployment status
kubectl get pods

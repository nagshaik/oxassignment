#!/bin/bash

# Check if Minikube is installed
if command -v minikube &> /dev/null; then
    echo "Minikube is already installed."
else
    # Install Minikube
    echo "Installing Minikube..."

    # Download the latest Minikube release
    curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64

    # Install Minikube
    sudo install minikube-linux-amd64 /usr/local/bin/minikube

    # Clean up the downloaded binary
    rm minikube-linux-amd64

    echo "Minikube has been installed successfully."
fi

# Start Minikube
echo "Starting Minikube..."
minikube start --driver=docker

# Display Minikube status
minikube status

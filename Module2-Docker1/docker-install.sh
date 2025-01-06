#!/bin/bash

# Create a directory (if needed)
mkdir -p module2-Docker1
cd module2-Docker1 || exit 1

# Update and upgrade the system
sudo apt update && sudo apt upgrade -y

# Install prerequisites
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common

# Add Docker's GPG key and repository
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Update package index and install Docker
sudo apt update
sudo apt install -y docker-ce docker-ce-cli containerd.io

# Verify Docker installation
docker --version || { echo "Docker installation failed"; exit 1; }

# Add the current user to the Docker group
sudo groupadd docker 2>/dev/null || echo "Docker group already exists"
sudo usermod -aG docker "$USER"

# Inform the user to restart the shell
echo "Docker installed successfully. Please restart your shell or run 'newgrp docker' to apply group changes."

#!/bin/bash

# Build l’image Docker
docker build -t monapp .

# Stop et supprime l’ancien container s’il existe
docker rm -f mywebapp_container 2>/dev/null

# Lance le container sur le port 9090 au lieu de 8080
docker run -d -p 9090:80 --name mywebapp_container monapp

echo "Application accessible sur http://localhost:9090"

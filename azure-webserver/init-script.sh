#!/bin/bash

#Installing Docker
sudo apt update && sudo apt upgrade -y
sudo apt install docker.io -y
sudo killall apt
sudo apt update && sudo apt upgrade -y
sudo apt install docker.io -y
sudo usermod -aG docker $USER
Creating container
sudo docker run -d -p 80:80 -h nginxtfb13 nevii/tfb13nginx-arap22-ren-t:latest

#Installing Azure CLI to create a registry and deploy a managed container with the previous app : 
sudo curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
az login --service-principal --username 1244ff47-5233-442c-b8df-b761e220bc23 --password YtY8Q~Q6kLoKDGGGEn3lGlILr--HZ5EsbJwOGba- --tenant 7349d3b2-951f-41be-877e-d8ccd9f3e73c
sudo git clonehttps://github.com/Nevralgie/Dockertf.git
cd Dockertf
az acr create --resource-group nginx-servertomtest --name tomregistryb13 --sku Basic --admin-enabled true
az acr build --registry tomregistryb13 --image nginxbrief13 .
az config set extension.use_dynamic_install=yes_without_prompt
az containerapp env create --name tfenvtom --resource-group nginx-servertomtest --location francecentral
az containerapp create --name nginxaz13 --resource-group nginx-servertomtest --environment tfenvtom --image tomregistryb13.azurecr.io/nginxbrief13 --target-port 80 --ingress 'external' --registry-server tomregistryb13.azurecr.io --query properties.configuration.ingress.fqdn


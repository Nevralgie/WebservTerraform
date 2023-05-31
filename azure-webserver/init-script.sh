#!/bin/bash


sudo curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
az
az login --service-principal --username 1244ff47-5233-442c-b8df-b761e220bc23 --password YtY8Q~Q6kLoKDGGGEn3lGlILr--HZ5EsbJwOGba- --tenant 7349d3b2-951f-41be-877e-d8ccd9f3e73c
sudo az acr create --resource-group nginx-servertomtest --name tomregistryb13 --sku Basic --admin-enabled true
sudo az acr build --registry tomregistryb13 --image nginxbrief13 .
sudo az config set extension.use_dynamic_install=yes_without_prompt
sudo az containerapp env create --name tfenvtom --resource-group nginx-servertomtest --location francecentral
sudo az containerapp create --name nginxaz13 --resource-group nginx-servertomtest --environment tfenvtom --image tomregistryb13.azurecr.io/nginxbrief13 --target-port 80 --ingress 'external' --registry-server tomregistryb13.azurecr.io --query properties.configuration.ingress.fqdn

#sudo killall apt 
#Installing Docker
#sudo apt update && sudo apt upgrade -y
#sudo apt install docker.io -y
#sudo usermod -aG docker $USER
#Creating container
#sudo docker run -d -p 80:80 -h nginxtfb13 nevii/tfb13nginx-arap22-ren-t:latest

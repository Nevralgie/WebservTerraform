#!/bin/bash
sudo killall apt 
#Installing Docker
sudo apt update && sudo apt upgrade -y
sudo apt install docker.io -y
sudo usermod -aG docker $USER
#Creating container
sudo docker run -d -p 80:80 -h nginxtfb13 nevii/tfb13nginx-arap22-ren-t:latest

#!/bin/bash

#Author: christy
#Date: 10/29/2022
# Description :  "write a new script to install Docker on Centos "

echo "installation beguin"

echo " please run the following commands"


sudo yum remove docker docker-client docker-client-latest docker-common docker-latest docker-latest-logrotate docker-logrotate docker-engine

sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

 sudo yum install docker-ce docker-ce-cli containerd.io

 sudo systemctl start docker
 sudo systemctl enable docker
 sudo systemctl status docker

sudo docker run hello-world

echo "Docker successfully install with the hello-world"
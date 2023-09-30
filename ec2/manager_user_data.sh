#!/bin/bash

apt update -y
apt upgrade -y
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh
usermod -aG sudo ubuntu
usermod -aG adm ubuntu
usermod -aG docker ubuntu
git clone https://github.com/tom-puntillo/docker_compose_files.git
mv /docker_compose_files ~/
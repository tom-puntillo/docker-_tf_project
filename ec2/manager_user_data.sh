#!/bin/bash

apt update -y
apt upgrade -y
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
git clone https://github.com/tom-puntillo/docker_compose_files.git
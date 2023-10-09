#!/bin/bash

apt update -y
apt upgrade -y
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh

#!/bin/bash
sudo apt-get update -y &&
# Misc tooling
sudo apt-get install -y \
build-essential \
apt-transport-https \
ca-certificates \
curl \
gnupg-agent \
software-properties-common &&
# install docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - &&
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" &&
sudo apt-get update -y &&
sudo sudo apt-get install docker-ce docker-ce-cli containerd.io -y &&
sudo usermod -aG docker ubuntu
# Languages n stuff
curl -fsSL https://get.pnpm.io/install.sh | sh -
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt-get install -y \
nginx nodejs \
python3 python3-pip

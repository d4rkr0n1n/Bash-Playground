#!/bin/bash

curl -fsSL https://get.docker.com -o get-docker.sh

sudo apt update
sudo sh get-docker.sh
sudo usermod -aG docker ${USER}

newgrp docker
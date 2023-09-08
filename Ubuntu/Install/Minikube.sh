#!/bin/bash

sudo apt update

curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube

minikube start
minikube kubectl -- get po -A
echo 'alias kubectl="minikube kubectl --"' >> ~/.bashrc
source ~/.bashrc
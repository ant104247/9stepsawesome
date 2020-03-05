#!/bin/bash
set -x

minikube --profile 11steps config set memory 6144
minikube --profile 11steps config set cpus 2
minikube --profile 11steps config set vm-driver virtualbox
minikube --profile 11steps config set kubernetes-version v1.14.0
minikube start --profile 11steps


# configure environment for Docker which will use minikube VM as DOCKER_HOST 
eval $(minikube --profile 11steps docker-env)

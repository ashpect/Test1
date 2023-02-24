#!/bin/sh
echo "hello"
git pull
eval $(minikube docker-env)
docker build -t challenge .
kubectl delete deployment challenge
kubectl apply -f challenge.yaml

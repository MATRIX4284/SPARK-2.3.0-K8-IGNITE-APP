#!/bin/bash

cd ../K8-Deployment/ignite-server

kubectl delete -f ignite-namespace.yaml
kubectl delete -f ignite-service-account.yaml
kubectl delete -f ignite-account-role.yaml
kubectl delete -f ignite-role-binding.yaml
kubectl delete -f ignite-service.yaml
kubectl delete -f ignite-deployment.yaml

kubectl create -f ignite-namespace.yaml
kubectl create -f ignite-service-account.yaml
kubectl create -f ignite-account-role.yaml
kubectl create -f ignite-role-binding.yaml
kubectl config set-context $(kubectl config current-context) --namespace=ignite
kubectl create -f ignite-service.yaml
kubectl create -f ignite-deployment.yaml


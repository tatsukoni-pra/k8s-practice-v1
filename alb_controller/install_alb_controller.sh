#!/bin/bash

helm repo add eks-charts https://aws.github.io/eks-charts

helm install aws-load-balancer-controller eks-charts/aws-load-balancer-controller \
  -n kube-system \
  --set clusterName="eks-work-cluster" \
  --set serviceAccount.create=false \
  --set serviceAccount.name=aws-load-balancer-controller

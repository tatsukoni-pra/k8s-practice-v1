#!/bin/bash

eksctl create iamserviceaccount \
  --cluster eks-work-cluster \
  --namespace kube-system \
  --name aws-load-balancer-controller \
  --role-name AmazonEKSLoadBalancerControllerRole \
  --attach-policy-arn arn:aws:iam::083636136646:policy/AWSLoadBalancerControllerIAMPolicy \
  --profile tatsukoni \
  --region ap-northeast-1 \
  --approve

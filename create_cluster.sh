#!/bin/bash

eksctl create cluster \
  --name eks-work-cluster \
  --region ap-northeast-1 \
  --version 1.29 \
  --nodegroup-name eks-work-nodegroup \
  --node-type t2.small \
  --nodes 2 \
  --nodes-min 2 \
  --nodes-max 3 \
  --vpc-public-subnets subnet-0043c72cfb2b9bc77,subnet-0b59531acff265d5d \
  --profile tatsukoni

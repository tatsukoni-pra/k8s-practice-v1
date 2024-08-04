#!/bin/bash

aws iam create-policy \
  --policy-name AWSLoadBalancerControllerIAMPolicy \
  --policy-document file://iam_policy.json \
  --profile tatsukoni \
  --region ap-northeast-1

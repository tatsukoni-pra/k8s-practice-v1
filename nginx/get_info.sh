#!/bin/bash

# deployment情報取得
kubectl get deployment

# replocaset情報取得
kubectl get replicaset

# pod情報取得
kubectl get pod

# pod詳細情報取得
kubectl describe pod <pod名>

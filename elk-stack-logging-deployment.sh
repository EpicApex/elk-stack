#! /bin/bash

#deploy cluster environment
kubectl apply -f namespace-elk-stack.yaml -n elk-ns \
kubectl apply -f configMap-dns-log-creator.yaml -n elk-ns \ 
kubectl apply -f service-headless-elastic-dns-domain.yaml -n elk-ns

#deploy logger app  and lb
kubectl apply -f deployment-busybox-log-creator.yaml -n elk-ns \
sleep 60 \
kubectl apply -f load-balancer-log-creator.yaml -n elk-ns \ 

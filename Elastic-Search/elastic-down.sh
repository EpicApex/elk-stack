#! /bin/bash
echo "Cleaning up elastic resrouces"
kubectl delete -n elk-ns -f statefulSet-elastic-search.yaml
kubectl get pv -n elk-ns | grep "elastic-search-" | awk '{print "pv/" $1}' | xargs kubectl delete -n elk-ns
kubectl get pvc -n elk-ns | grep "data-elastic-search-" | awk '{print "pvc/" $1}' | xargs kubectl delete -n elk-ns

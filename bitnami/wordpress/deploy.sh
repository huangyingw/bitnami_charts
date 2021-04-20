#!/bin/zsh
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

#helm dependency update ./
helm uninstall wordpress
helm install wordpress ./

'
kubectl get persistentvolumeclaims
NAME                       STATUS    VOLUME   CAPACITY   ACCESS MODES   STORAGECLASS   AGE
data-wordpress-mariadb-0   Pending                                                     11h
kubectl get persistentvolumes
No resources found in default namespace.

../mariadb/templates/master-statefulset.yaml:321:          persistentVolumeClaim:
templates/deployment.yaml:228:          persistentVolumeClaim:
'

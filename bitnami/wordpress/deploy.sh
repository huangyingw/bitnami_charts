#!/bin/zsh
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

helm dependency update ./
helm uninstall wordpress
helm install wordpress ./ --set global.storageClass=openebs-hostpath
# helm install wordpress ./ --set global.storageClass=openebs-hostpath,mariadb.primary.persistence.storageClass=openebs-hostpath

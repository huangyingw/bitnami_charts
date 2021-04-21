#!/bin/zsh
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

helm uninstall wordpress
helm install wordpress ./ --set global.storageClass=openebs-hostpath

#!/bin/zsh
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

helm dependency update ./
helm uninstall jupyterhub
helm install jupyterhub ./ --set singleuser.persistence.storageClass=openebs-hostpath,postgresql.persistence.storageClass=openebs-hostpath

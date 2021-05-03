#!/bin/zsh
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

helm dependency update ./
helm uninstall jenkins
helm install jenkins ./ --set global.storageClass=openebs-hostpath

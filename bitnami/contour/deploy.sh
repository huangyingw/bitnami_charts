#!/bin/zsh
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

helm dependency update ./
helm uninstall nginx-ingress-controller
helm install nginx-ingress-controller ./

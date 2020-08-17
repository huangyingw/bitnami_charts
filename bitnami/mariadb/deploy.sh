#!/bin/zsh
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

helm uninstall mariadb
helm install mariadb ./
helm upgrade --install mariadb ./

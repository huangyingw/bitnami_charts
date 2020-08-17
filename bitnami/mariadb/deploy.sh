#!/bin/zsh
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

helm uninstall mariadb
helm install mariadb ./ --set master.persistence.storageClass=gluster-heketi,slave.persistence.storageClass=gluster-heketi

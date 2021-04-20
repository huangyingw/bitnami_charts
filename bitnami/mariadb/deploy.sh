#!/bin/zsh
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

helm uninstall mariadb
# helm install mariadb ./ --set master.persistence.storageClass=gluster-heketi,slave.persistence.storageClass=gluster-heketi
export MY_PASSWORD=my-pass
helm install mariadb ./ --values ./custom-values.yaml --set db.password=$MY_PASSWORD

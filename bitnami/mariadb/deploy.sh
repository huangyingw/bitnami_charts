#!/bin/zsh
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

helm uninstall mariadb
helm dependency update ./
# helm install mariadb ./ --set master.persistence.storageClass=gluster-heketi,slave.persistence.storageClass=gluster-heketi
helm install mariadb ./ --set global.storageClass=openebs-hostpath
export MY_PASSWORD=my-pass
# helm install mariadb ./ --values ./custom-values.yaml --set db.password=$MY_PASSWORD

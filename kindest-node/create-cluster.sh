#!/bin/bash

set -euo pipefail

if [[ $# != 1 ]]; then
	echo "Usage: $(basename $0) <image>"
	exit 1
fi

image=$1

kind create cluster --config - <<EOF
kind: Cluster
apiVersion: kind.x-k8s.io/v1alpha4
nodes:
- role: control-plane
  image: ${image}
EOF

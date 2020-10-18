#!/usr/bin/env bash

set -ex
set -o pipefail

IMAGE_REPO="lisy09kubesphere"
IMAGE_NAME="kube-rbac-proxy"
IMAGE_VERSION="v0.4.1"
DOCKER_PLATFORMS="linux/amd64,linux/arm/v7,linux/arm64"
DOCKER_FILE=${DOCKER_FILE:-Dockerfile}

echo 'Build and push ks-apiserver'
docker buildx build \
--file $DOCKER_FILE \
--tag $IMAGE_REPO/$IMAGE_NAME:$IMAGE_VERSION \
--platform $DOCKER_PLATFORMS \
--push .

#!/bin/bash

set -ex
IMAGE_NAME="alxshelepenok/grafana"
NEXUS_REGISTRY="docker-hosted.nexus.infrastructure.alxshelepenok"
TAG="${1}"
docker build -t ${IMAGE_NAME}:"${TAG}" .
docker tag ${IMAGE_NAME}:"${TAG}" ${NEXUS_REGISTRY}/${IMAGE_NAME}:"${TAG}"
docker push ${NEXUS_REGISTRY}/${IMAGE_NAME}:"${TAG}"

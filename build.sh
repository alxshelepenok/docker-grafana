#!/bin/bash

set -ex
IMAGE_NAME="waterscape/grafana"
TAG="${1}"
docker build -t ${IMAGE_NAME}:"${TAG}" .

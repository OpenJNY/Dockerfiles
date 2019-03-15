#!/bin/bash

usage() {
    echo "Usage: build.sh <tensorflow-tag> [<image-tag>]"
    exit 1
}

ORG="openjny"
TENSORFLOW_TAG="$1"
IMAGE_TAG="$2"

if [ -z "${TENSORFLOW_TAG}" ]; then
    usage
fi

if [ -z "${IMAGE_TAG}" ]; then
    IMAGE_TAG="${TENSORFLOW_TAG}"
fi

docker build . -t ${ORG}/tensorflow:${IMAGE_TAG} --build-arg TENSORFLOW_TAG=${TENSORFLOW_TAG}
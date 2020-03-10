#!/bin/bash

set -e

DOCKER_REPO=intersystemsdc/irisdemo-base-gcc
VERSION=`cat ./VERSION`

docker build -t ${DOCKER_REPO}:version-${VERSION} .
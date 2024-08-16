#!/bin/bash

RELEASE=${1:-latest}

docker --debug buildx build --no-cache -f docker/Dockerfile docker --tag box4prod/lgtm:${RELEASE}

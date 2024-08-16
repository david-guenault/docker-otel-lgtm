#!/bin/bash

RELEASE=${1:-latest}

docker run -d \
  --name lgtm \
  -p 3000:3000 \
  -p 4317:4317 \
  -p 4318:4318 \
  -p 9009:9009 \
  -p 3100:3100 \
  -p 3200:3200 \
  --rm \
  -ti \
  -v $PWD/container/grafana:/data/grafana \
  -v $PWD/container/loki:/loki \
  -v $PWD/container/mimir:/data/mimir \
  -e GF_PATHS_DATA=/data/grafana \
  box4prod/lgtm:${RELEASE}

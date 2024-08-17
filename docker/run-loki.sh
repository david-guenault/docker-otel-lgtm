#!/bin/bash

./loki/loki-linux-${TARGETARCH}  --config.file=./loki-config.yaml > /data/logs/loki.log 2>&1

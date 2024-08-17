#!/bin/bash

./mimir/mimir \
      --config.file=./mimir-config.yaml > /data/logs/mimir.log 2>&1 &

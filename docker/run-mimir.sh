#!/bin/bash

./mimir/mimir \
      --config.file=./mimir-config.yaml > /data/mimir/mimir.log 2>&1 &

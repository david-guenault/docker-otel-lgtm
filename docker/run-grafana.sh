#!/bin/bash

cd ./grafana
./bin/grafana server > /data/logs/grafana.log 2>&1

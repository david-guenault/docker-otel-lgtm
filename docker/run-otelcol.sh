#!/bin/bash

./otelcol-contrib/otelcol-contrib \
	--config=file:./otelcol-config.yaml \
	> /data/logs/otelcol.log 2>&1

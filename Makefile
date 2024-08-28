RELEASE=0.0.1
ORG=ghcr.io/david-guenault
NAME=lgtm

build:
	docker --debug buildx build --no-cache -f docker/Dockerfile docker --tag $(ORG)/$(NAME):$(RELEASE)

start:
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
	$(ORG)/$(NAME):$(RELEASE)	

stop:
	@-docker stop lgtm

clean: 
	@-rm -Rf container
	@-docker rmi $(ORG)/$(NAME):$(RELEASE)

ps: 
	@-docker ps | grep -i lgtm

system_prune:
	@-docker system prune -f

shell:
	docker exec -ti lgtm /bin/bash


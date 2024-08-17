build:
	./build-lgtm.sh

start:
	./run-lgtm.sh 2>&1

stop:
	@-docker stop lgtm

clean: 
	@-rm -Rf container
	@-docker rmi box4prod/lgtm:latest
	@-docker rmi $$(docker images | grep none | awk '{print $$3}')

system_prune:
	@-docker system prune -f

shell:
	docker exec -ti lgtm /bin/bash



.PHONY: run
run:
	make -j2 local-client local-server

local-client:
	cd client; \
	yarn dev

local-server:
	cd server; \
	cargo run


################################################################################


.PHONY: run-container
run-container:
	docker-compose -f tools/container/docker-compose.yml up

################################################################################

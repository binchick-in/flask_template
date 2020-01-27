DOCKER_TAG ?= flask_app_factory

.PHONY: run
run: build
	docker run -d -p 127.0.0.1:8888:8888 --name $(DOCKER_TAG)-container $(DOCKER_TAG)

.PHONY: run-dev
run-dev: build
	docker run -it --rm -p 8888:8888 --name $(DOCKER_TAG)-container $(DOCKER_TAG)

.PHONY: build
build:
	docker build -t $(DOCKER_TAG) .

DOCKER_TAG ?= flask_template

.PHONY: run
run: build
	docker run -d -p 127.0.0.1:8888:8888 --name $(DOCKER_TAG)-container $(DOCKER_TAG)

.PHONY: run-dev
run-dev: build
	docker run -it -p 8888:8888 --name $(DOCKER_TAG)-container $(DOCKER_TAG)

.PHONY: build
build:
	docker build -t $(DOCKER_TAG) .

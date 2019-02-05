DOCKER_TAG ?= flask_template-$(USER)

build:
	docker build -t $(DOCKER_TAG) .
	docker run -d -p 8888:8888 --name $(DOCKER_TAG) $(DOCKER_TAG)-container


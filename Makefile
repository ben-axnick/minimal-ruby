REPO = bentheax
PROJECT = minimal-ruby
TAG ?= 2.3

IMAGE = $(REPO)/$(PROJECT):$(TAG)
IMAGE_LATEST = $(REPO)/$(PROJECT):latest

.PHONY: build
build:
	docker build --rm -t $(IMAGE) .
	docker tag $(IMAGE) $(IMAGE_LATEST)

.PHONY: push
push:
	docker push $(IMAGE)
	docker push $(IMAGE_LATEST)

tag:
	git tag v$(TAG)

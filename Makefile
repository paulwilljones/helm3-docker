.PHONY: all build
IMAGE_NAME := "helm3-docker"
IMAGE_VERSION := "v3.0.0-alpha.1"

default: help

help:				## Show this help.
		@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

build:				## Build Helm 3 Docker image
	@echo "building ${IMAGE_NAME}"
	docker build -t ${IMAGE_NAME}:${IMAGE_VERSION} .
	docker tag ${IMAGE_NAME}:${IMAGE_VERSION} ${IMAGE_NAME}:latest
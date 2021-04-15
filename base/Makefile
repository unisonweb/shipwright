vault_version=1.7.0
build_number=${DRONE_BUILD_NUMBER}
build_number := $(if $(build_number),$(build_number),latest)
export build_number
IMAGENAME=base
REPO=registry.digitalocean.com/stewcasa
IMAGEFULLNAME=${REPO}/${IMAGENAME}:${build_number}

.PHONY: help build push all

help:
		@echo "Usage:"
		@echo "make build vault_version=1.7.0"
	    @echo "Makefile arguments:"
	    @echo ""
	    @echo "vault_version"
	    @echo "build_number -- as version when tagging images, defaults to DRONE_BUILD_NUMBER"
	    @echo ""
	    @echo "Makefile commands:"
	    @echo "build"
	    @echo "push"
	    @echo "all"

.DEFAULT_GOAL := all

build:
#	    @docker build --pull --build-arg VAULT_VERSION=${vault_version} -t ${IMAGEFULLNAME} .
	    docker build --build-arg VAULT_VERSION=${vault_version} -t ${IMAGEFULLNAME} .

push:
	    @docker push ${IMAGEFULLNAME}

all: build push

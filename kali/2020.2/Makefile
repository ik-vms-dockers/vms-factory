.EXPORT_ALL_VARIABLES:
.ONESHELL:

.SHELLFLAGS = -x

SHELL := /bin/bash
UUID = `cat .vagrant/machines/default/virtualbox/id`
VERSION ?= $(shell cat config.yaml | yq r - box.version)
BOX_NAME ?= kalilinux-amd64-tools

help/local:
	@cat Makefile* | grep -E '^[a-zA-Z_-]+:.*?## .*$$' | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

help: help/local

build: ## Build the box
	@vagrant up

stop: ## Stop the box
	@vagrant halt

release: ## Package and Release Box
	@bin/prepare-box.sh

clean:
	rm -f vm.ova
	rm -f vm.box

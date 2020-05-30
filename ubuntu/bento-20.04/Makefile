.EXPORT_ALL_VARIABLES:

.PHONY: pre-commit changelog release

# -include $(shell curl -sSL -o .build-harness "https://git.io/build-harness"; echo .build-harness)

help/local:
	@cat Makefile* | grep -E '^[a-zA-Z_-]+:.*?## .*$$' | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

help: help/local

build: ## Build the box
	@vagrant up

stop: ## Stop the box
	@vagrant halt

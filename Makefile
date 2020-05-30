.EXPORT_ALL_VARIABLES:

.PHONY: pre-commit changelog release

PROVIDER ?= virtualbox

help/local:
	@cat Makefile* | grep -E '^[a-zA-Z_-]+:.*?## .*$$' | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

help: help/local

hooks: ## Commit hooks setup
	@pre-commit install
	@pre-commit gc
	@pre-commit autoupdate

validate: ## Validate with pre-commit hooks
	@pre-commit run --all-files

changelog: ## Update changelog
	git-chglog -o CHANGELOG.md --next-tag `semtag final -s minor -o`

release: ## Create release version
	@semtag final -s minor

caches: ## Vagrant Caches
	@echo "scope = :vagrant"
	@du -h -d0 $(HOME)/.vagrant.d
	@echo "scope = :box"
	@du -h -d0 $(HOME)/.vagrant.d/cache
	@echo "scope = :machine"
	@find . -type d -name ".vagrant" -prune --exec du -h -d0 .vagrant/machines/*/cache {} \;

destroy-all: ## Stop All Vagrant Boxes
	@find . -type f -name "Vagrantfile" -prune -exec vagrant destroy -f {} \;

clean: ## Clean Vagrant Folder
	@find . -type f -name "Vagrantfile" -exec echo {} \;
	@find . -type d -name ".vagrant" -prune -exec rm -rf {} \;

remove-old: ## Remove old boxes BOX=cloudkats/k8s-on-aws-tools
	@vagrant box prune $(BOX)

remove-version: ## Remove old boxes BOX=cloudkats/k8s-on-aws-tools VERSION=2020.05.3
	@vagrant box remove $(BOX) --box-version $(VERSION) --provider $(PROVIDER)

.PHONY: help
help: ## This outputs help information.
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

.PHONY: build
build: ## Build Docker container.
	docker build . -t huseyinyilmaz/devenv

.PHONY: run
run: ## Run the container
	docker run -ti --rm --name devenv huseyinyilmaz/devenv


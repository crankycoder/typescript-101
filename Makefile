.PHONY: help

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

build: ## Build
	npm install
	npm run build

run: ## Run
	npm start

lint: ## Lint
	npm run lint

lintfix: ## fix lints
	npm run lint:fix

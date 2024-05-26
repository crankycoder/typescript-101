.PHONY: help

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

build: ## Install and build
	npm install
	npm run build

run: ## Run application
	npm start

lint: ## Run lint
	npm run lint

lintfix: ## Fix lints
	npm run lint:fix

test: ## Run tests
	npm test

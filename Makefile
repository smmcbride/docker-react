.DEFAULT_GOAL := help

build: ## build the server
	docker-compose build

up: ## start the server
	docker-compose up -d

down: ## Stop the server
	docker-compose down

help:
	@grep -E '^[0-9a-zA-Z_-]+:.*?## .*$$' ./Makefile | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-18s\033[0m %s\n", $$1, $$2}'

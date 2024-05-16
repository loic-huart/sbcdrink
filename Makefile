DC := docker compose --env-file .env.api -f ./docker-compose.yml
EXEC := $(DC) exec sbcdrink-api
DR := $(DC) run --rm

.DEFAULT_GOAL: help
.PHONY: help
help: ## Display this help
	@grep -E '(^[a-zA-Z_-]+:.*?##.*$$)|(^##)' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[32m%-10s\033[0m %s\n", $$1, $$2}' | sed -e 's/\[32m##/[33m/'

## --- Docker 🐳 ---

.PHONY: up
up: ## Start the containers
	$(DC) up -d

.PHONY: down
down: ## Stop the containers
	$(DC) down

.PHONY: build
build: ## Build the containers
	$(DC) build

.PHONY: clean 
clean: ## Remove all containers, images and volumes
	$(DC) down -v --rmi all --remove-orphans

## --- Projet 🐸 ---

.PHONY: start
start: ## Start the project
	$(EXEC) yarn start

.PHONY: seed
seed: ## Seed the database
	$(EXEC) sh ./seeder/seed.sh
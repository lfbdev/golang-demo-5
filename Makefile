SHELL := /bin/bash
BASEDIR = $(shell pwd)

.PHONY: help
help:
		@grep -E '^[a-zA-Z0-9_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: install
install: ## Install dependencies
		@go mod download
		@go mod vendor

.PHONY: dev
dev: ## Run with Dev
		@go run cmd/golang-demo-5/main.go

.PHONY: build
build: ## Build todomvc
		@go build -o build/golang-demo-5 cmd/golang-demo-5/main.go

clean: ### Remove build dir
		@rm -rf build

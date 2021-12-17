.DEFAULT_GOAL := usage

# user and repo
USER        = $$(whoami)
CURRENT_DIR = $(notdir $(shell pwd))

# terminal colours
RED     = \033[0;31m
GREEN   = \033[0;32m
YELLOW  = \033[0;33m
NC      = \033[0m

# versions
APP_REVISION    = $(shell git rev-parse HEAD)

.PHONY: build
build: prettier

.PHONY: prettier
prettier:
	bundle exec rubocop

.PHONY: prettier-fix
prettier-fix:
	bundle exec rubocop --auto-correct-all

.PHONY: db-migrate
db-migrate:
	bundle exec rails db:create db:migrate
	bundle exec rails db:drop db:create db:migrate RAILS_ENV=test
	bin/makefile/check-structure-sql

.PHONY: deploy
deploy:
	pushd .. && make deploy && popd

.PHONY: usage
usage:
	@echo
	@echo "Hi ${GREEN}${USER}!${NC} Welcome to ${RED}${CURRENT_DIR}${NC}"
	@echo
	@echo "Development"
	@echo
	@echo "${YELLOW}make db-migrate${NC}        migrate and confirm db/structure.sql"
	@echo "${YELLOW}make prettier${NC}          run rubocop and linting rules"
	@echo "${YELLOW}make prettier-fix${NC}      auto fix rubocop and linting exceptions"
	@echo
	@echo "Build"
	@echo
	@echo "${YELLOW}make build${NC}             run build"
	@echo
	@echo "Operations"
	@echo
	@echo "${YELLOW}make deploy${NC}            deploy to production https://rap-server-prd.herokuapp.com"
	@echo

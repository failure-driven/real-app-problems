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

.PHONY: db-migrate
db-migrate:
	bundle exec rails db:create db:migrate
	bundle exec rails db:drop db:create db:migrate RAILS_ENV=test
	bin/makefile/check-structure-sql

.PHONY: usage
usage:
	@echo
	@echo "Hi ${GREEN}${USER}!${NC} Welcome to ${RED}${CURRENT_DIR}${NC}"
	@echo
	@echo "Development"
	@echo
	@echo "${YELLOW}make db-migrate${NC}       migrate and confirm db/structure.sql"
	@echo

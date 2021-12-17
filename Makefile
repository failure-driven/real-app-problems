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

# NOTE: used for initial create of repo
.PHONY: deploy-create
deploy-create:
	RAILS_MASTER_KEY=`cat config/master.key` \
		HEROKU_APP_NAME=rap-server-prd \
		bin/makefile/heroku-create --create

.PHONY: deploy
deploy:
	RAILS_MASTER_KEY=`cat config/master.key` \
		HEROKU_APP_NAME=rap-server-prd \
		bin/makefile/heroku-create

.PHONY: usage
usage:
	@echo
	@echo "Hi ${GREEN}${USER}!${NC} Welcome to ${RED}${CURRENT_DIR}${NC}"
	@echo
	@echo "Operations"
	@echo
	@echo "${YELLOW}make deploy${NC}            deploy to production https://rap-server-prd.herokuapp.com"
	@echo

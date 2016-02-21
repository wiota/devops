BINDIR = $(PWD)/.state/env/bin

default:
	@echo "Must call a specific subcommand"
	@exit 1

.state/docker-build: ../lime/Dockerfile ../facade/Dockerfile ../trowel/Dockerfile
	# Build our docker containers for this project.
	docker-compose build

	# Mark the state so we don't rebuild this needlessly.
	mkdir -p .state
	touch .state/docker-build

build:
	docker-compose build

	# Mark this state so that the other target will known it's recently been
	# rebuilt.
	mkdir -p .state
	touch .state/docker-build

serve: .state/docker-build ../lime/.env ../facade/.env ../trowel/.env
	docker-compose up

.PHONY: default build serve initdb shell tests docs clean purge update-requirements

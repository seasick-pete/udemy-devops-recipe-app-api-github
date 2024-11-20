.PHONY: _
build-dev:
	docker compose build

.PHONY: _
up-dev:
	docker compose up

.PHONY: _
sh-dev:
	docker compose run --rm app bash


.PHONY: _
down-dev-volumes-orphans:
	docker compose down --volumes --remove-orphans


.PHONY: _
build-deploy:
	docker compose -f docker-compose-deploy.yml build

.PHONY: _
up-deploy:
	docker compose -f docker-compose-deploy.yml up

.PHONY: _
sh-deploy:
	docker compose -f docker-compose-deploy.yml run --rm app sh

.PHONY: _
down-deploy-volumes-orphans:
	docker compose -f docker-compose-deploy.yml down --volumes --remove-orphans


.PHONY: _
aws-vault-list:
	aws-vault list




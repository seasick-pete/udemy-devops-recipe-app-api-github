.PHONY: _
tf-setup-init:
	docker compose run --rm terraform -chdir=setup init

.PHONY: _
tf-setup-fmt:
	docker compose run --rm terraform -chdir=setup fmt

.PHONY: _
tf-setup-validate:
	docker compose run --rm terraform -chdir=setup validate

.PHONY: _
tf-deploy-init:
	docker compose run --rm terraform -chdir=deploy init

.PHONY: _
tf-deploy-fmt:
	docker compose run --rm terraform -chdir=deploy fmt

.PHONY: _
tf-deploy-validate:
	docker compose run --rm terraform -chdir=deploy validate

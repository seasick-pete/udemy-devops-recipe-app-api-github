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
tf-setup-plan:
	docker compose run --rm terraform -chdir=setup plan

.PHONY: _
tf-setup-apply:
	docker compose run --rm terraform -chdir=setup apply


.PHONY: _
tf-setup-output:
	docker compose run --rm terraform -chdir=setup output

.PHONY: _
tf-setup-output-aws-secret:
	docker compose run --rm terraform -chdir=setup output cd_user_access_key_secret

.PHONY: _
tf-deploy-init:
	docker compose run --rm terraform -chdir=deploy init

.PHONY: _
tf-deploy-fmt:
	docker compose run --rm terraform -chdir=deploy fmt

.PHONY: _
tf-deploy-validate:
	docker compose run --rm terraform -chdir=deploy validate

.PHONY: _
tf-state-list:
	docker compose run --rm terraform -chdir=deploy/ workspace select staging && \
	docker compose run --rm terraform -chdir=deploy/ state list


.PHONY: _
aws-ecs-exec:
	aws ecs execute-command \
		--cluster raagh-staging-cluster \
		--region eu-west-2 \
		--task df3cf38903c64cbc91f2c967e15d30cc \
		--container api \
		--interactive \
		--command "/bin/sh"


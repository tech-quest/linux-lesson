YAML_FILE:=./docker-compose.yml

.PHONY: up
up:
	docker compose -f ${YAML_FILE} up -d

.PHONY: rebuild
rebuild:
	docker compose -f ${YAML_FILE} up -d --build

.PHONY: stop
stop:
	docker compose -f ${YAML_FILE} stop

.PHONY: down
down:
	docker compose -f ${YAML_FILE} down

.PHONY: destroy
destroy:
	docker compose -f ${YAML_FILE} down --rmi all --volumes --remove-orphans

.PHONY: refresh
refresh:
	@make destroy
	@make up

.PHONY: login
login:
	docker compose -f ${YAML_FILE} exec ubuntu /bin/bash
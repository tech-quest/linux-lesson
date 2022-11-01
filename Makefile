YAML_FILE:=./docker-compose.yml

.PHONY: up
up:
	docker compose -f ${YAML_FILE} up -d

.PHONY: stop
stop:
	docker compose -f ${YAML_FILE} stop

.PHONY: rebuild
rebuild:
	docker compose -f ${YAML_FILE} up -d --build

.PHONY: refresh
refresh:
	@make stop
	@make rebuild

.PHONY: down
down:
	docker compose -f ${YAML_FILE} down

.PHONY: destroy
destroy:
	docker compose -f ${YAML_FILE} down --rmi all --volumes --remove-orphans

.PHONY: login
login:
	docker compose -f ${YAML_FILE} exec ubuntu /bin/bash
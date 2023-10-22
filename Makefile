CONTAINER_NAME=rbd-postgres-1
EXEC_COMMAND=docker exec -i $(CONTAINER_NAME) sh -c

.PHONY: migrate

migrate:
	@for file in ./migrations/*.sql; do \
		echo $$file; \
		$(EXEC_COMMAND) 'psql -U "$$POSTGRES_USER" "$$POSTGRES_DB"' < $${file}; \
	done

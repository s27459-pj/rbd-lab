CONTAINER_NAME=rbd-postgres-1
EXEC_COMMAND=docker exec -i $(CONTAINER_NAME) sh -c
PSQL_COMMAND='psql -U "$$POSTGRES_USER" "$$POSTGRES_DB"'

.PHONY: migrate clean

migrate:
	@for file in ./migrations/*.sql; do \
		echo $$file; \
		$(EXEC_COMMAND) $(PSQL_COMMAND) < $${file}; \
	done

migrate_merged:
	@for file in ./merged_migrations/*.sql; do \
		echo $$file; \
		$(EXEC_COMMAND) $(PSQL_COMMAND) < $${file}; \
	done

clean:
	$(EXEC_COMMAND) $(PSQL_COMMAND) < ./migrations/0000_clean.sql

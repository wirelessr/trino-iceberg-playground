CONTAINER ?= docker

compose-up:
	${CONTAINER} compose up -d

compose-down:
	${CONTAINER} compose down

compose-logs:
	${CONTAINER} compose logs -f

trino_container_id = $(shell ${CONTAINER} ps -q --filter "name=trino")
trino-cli:
	${CONTAINER} exec -it $(trino_container_id) trino 
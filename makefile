CONTAINER ?= docker

compose-up:
	${CONTAINER} compose up -d

compose-down:
	${CONTAINER} compose down

compose-logs:
	${CONTAINER} compose logs -f

trino-cli:
	${CONTAINER} compose exec -it trino trino
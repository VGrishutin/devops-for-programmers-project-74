tests:
	docker-compose -f docker-compose.yml -f docker-compose.override.yml run --rm app make prepare-env test

build:
	docker-compose -f docker-compose.yml -f docker-compose.override.yml run --rm app make setup

run:
	docker-compose -f docker-compose.yml -f docker-compose.override.yml up

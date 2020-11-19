run-prod:
	docker-compose -f docker-compose.yml -f docker-compose.prod.yml up -d
run-dev:
	docker-compose up -d
build-prod:
	docker-compose -f docker-compose.yml -f docker-compose.prod.yml build --no-cache
build-dev:
	docker-compose build --no-cache
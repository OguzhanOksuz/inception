DOC = docker-compose -f ./srcs/docker-compose.yml

all: up

up:
	$(DOC) up -d --build

down:
	$(DOC) down

clean:
	docker stop $$(docker ps -qa)
	docker rm $$(docker ps -qa)
	docker rmi -f $$(docker images -qa)
	docker volume rm $$(docker volume ls -q)
	docker network rm $$(docker network ls -q)

re: clean all

.PHONY: all up down clean re


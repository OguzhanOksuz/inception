
all: up

up:
	mkdir -p /home/data/wordpress
	mkdir -p /home/data/mysql
	docker-compose -f ./srcs/docker-compose.yml up -d --build

down:
	docker-compose -f ./srcs/docker-compose.yml down

clean: down
	docker-compose -f ./srcs/docker-compose.yml down -v --remove-orphans
	docker rmi -f $$(docker images -q)
	rm -rf /home/data/wordpress
	rm -rf /home/data/mysql
	
re: clean all

.PHONY: all up down clean re


all: clean build
	@cd srcs/ && docker compose up -d

build:
	@mkdir -p srcs/wordpress
	@mkdir -p srcs/mariadb
	@cd srcs/ && docker compose build

fbuild:
	@cd srcs/ && docker compose build --no-cache

up:
	@cd srcs/ && docker compose up -d

down:
	@cd srcs/ && docker compose down

logs:
	@cd srcs/ && docker compose logs -f

clean: down
	@cd srcs/ && docker volume prune -f

fclean:	clean
	@docker image rm srcs-mariadb srcs-wordpress srcs-nginx

prune:
	@docker system prune -af

bomb: fclean
	@docker volume rm mariadb wordpress
	@rm -rf srcs/wordpress/*
	@rm -rf srcs/mariadb/*

space:
	@docker system df

re: fclean build

rebomb: bomb all

.PHONY:	all build fbuild up down logs clean fclean re space bomb rebomb prune
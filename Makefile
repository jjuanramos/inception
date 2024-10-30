all: clean build
	@docker compose up -d

build:
	@mkdir -p ./wordpress
	@mkdir -p ./mariadb
	@docker compose build

fbuild:
	@docker compose build --no-cache

up:
	@docker compose up -d

down:
	@docker compose down

logs:
	@docker compose logs -f

clean: down
	@docker volume prune -f

fclean:	clean
	@docker image rm inception-mariadb inception-wordpress inception-nginx

prune:
	@docker system prune -af

bomb: fclean
	@docker volume rm mariadb wordpress
	@rm -rf wordpress/*
	@rm -rf mariadb/*

space:
	@docker system df

re: fclean build

rebomb: bomb all

.PHONY:	all build fbuild up down logs clean fclean re space bomb rebomb prune
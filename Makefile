all: clean build
	@docker-compose up

build:
	@mkdir -p /Users/juan/cursus/inception-parent/inception/wordpress
	@mkdir -p /Users/juan/cursus/inception-parent/inception/mariadb
	@docker-compose build

fbuild:
	@docker-compose build --no-cache

up:
	@docker-compose up

down:
	@docker-compose down

logs:
	@docker-compose logs -f

clean: down
	@docker volume prune -f

fclean:	clean
	@docker image rm v2-mariadb v2-wordpress v2-nginx

prune:
	@docker system prune -af

bomb: fclean
	@docker volume rm mariadb-v2 wordpress-v2
	@rm -rf wordpress/*
	@rm -rf mariadb/*

space:
	@docker system df

re: fclean build

rebomb: bomb all

.PHONY:	all build fbuild up down logs clean fclean re space bomb rebomb prune
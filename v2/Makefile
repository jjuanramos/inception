all: clean build
	@docker-compose up

build:
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
	@docker image rm inception-mariadb inception-wordpress inception-nginx

prune:
	@docker system prune -af

space:
	@docker system df

re: fclean build

.PHONY:	all build up down logs clean fclean re space
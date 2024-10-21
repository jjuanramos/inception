all: clean build
	@docker-compose up -d

build:
	@docker-compose build

fbuild:
	@ocker-compose build --no-cache

up:
	@docker rmi $(shell docker images -f "dangling=true" -qa) && docker-compose up -d

down:
	@docker-compose down

logs:
	@docker-compose logs -f

clean: down
	@docker volume prune -f

fclean:	clean
	@docker image rm mariadb wordpress nginx

prune:
	@docker system prune -af

space:
	@docker system df

re: fclean build

.PHONY:	all build up down logs clean fclean re space
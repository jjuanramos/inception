FROM debian:buster

RUN apt update -y \
	&& apt install php-fpm php-mysql -y \
	&& apt install curl -y

COPY script.sh /
COPY wp-config.php /

RUN chmod +x /script.sh

CMD ["/script.sh"]
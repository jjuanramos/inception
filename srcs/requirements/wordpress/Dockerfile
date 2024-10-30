FROM debian:buster

RUN apt update -y && apt install -y php-fpm \
	php-mysqli curl

RUN mkdir /run/php

COPY conf/www.conf /etc/php/7.3/fpm/pool.d/.
COPY tools/script.sh .

RUN chmod +x script.sh

EXPOSE 9000

CMD ["./script.sh"]

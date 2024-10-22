FROM debian:buster

RUN apt update -y && apt install -y php-fpm \
	php-mysqli curl

RUN mkdir /run/php

COPY www.conf /etc/php/7.3/fpm/pool.d/.
COPY script.sh .

RUN chmod +x script.sh

CMD ["./script.sh"]

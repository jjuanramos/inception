FROM debian:buster

RUN apt update -y && apt install -y php-fpm

RUN mkdir /run/php

CMD ["/usr/sbin/php-fpm7.3", "-F"]
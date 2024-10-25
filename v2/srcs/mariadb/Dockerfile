FROM debian:buster

RUN apt update -y && apt install -y mariadb-server procps

COPY 50-server.cnf /etc/mysql/mariadb.conf.d/.
COPY script.sh .

RUN mkdir /run/mysqld \
	&& chown -R mysql:mysql /run/mysqld /var/lib/mysql \
	&& chmod +x script.sh

CMD ["./script.sh"]
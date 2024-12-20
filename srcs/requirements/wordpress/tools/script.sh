#!/bin/bash
cd /var/www/html
if [ -f wp-config.php ]
then
	echo "wp-config.php file found"
else
	curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
	chmod +x wp-cli.phar
	./wp-cli.phar core download --allow-root
	./wp-cli.phar config create \
		--dbname=${db_name} \
        --dbuser=${db_user} \
        --dbpass=${db_pwd} \
		--dbhost=mariadb --allow-root
	./wp-cli.phar core install \
		--url=${domain_name}/ \
		--title=inception \
		--admin_user=${db_user} \
		--admin_password=${db_pwd} \
		--admin_email=${wp_email} --skip-email --allow-root
fi

/usr/sbin/php-fpm7.3 -F

#!/bin/bash
cd /var/www/html
if [ -f wp-config.php ]
then
	echo "wp-config.php file found"
else
	echo "Database Name: ${db_name}"
	echo "Database User: ${db_user}"
	echo "Database Password: ${db_pwd}"
	curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
	chmod +x wp-cli.phar
	./wp-cli.phar core download --allow-root
	./wp-cli.phar config create \
		--dbname=${db_name} \
        --dbuser=${db_user} \
        --dbpass=${db_pwd} \
		--dbhost=mariadb --allow-root
	./wp-cli.phar core install \
		--url=localhost \
		--title=inception \
		--admin_user=admin \
		--admin_password=admin \
		--admin_email=admin@admin.com --allow-root
fi

/usr/sbin/php-fpm7.3 -F

#!/bin/bash

cd /var/www/html

rm -rf *

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar 

chmod +x wp-cli.phar

mv wp-cli.phar /usr/local/bin/wp

wp core download --allow-root

rm /var/www/html/wp-config-sample.php

mv /wp-config.php /var/www/html/wp-config.php

sed -i -r "s/_name_here/$db1_name/1"   wp-config.php
sed -i -r "s/username_here/$db1_user/1"  wp-config.php
sed -i -r "s/password_here/$db1_pwd/1"    wp-config.php


wp core install --url=$DOMAIN_NAME/ --title=$WP_TITLE --admin_user=$WP_ADMIN_USR --admin_password=$WP_ADMIN_PWD --admin_email=$WP_ADMIN_EMAIL --skip-email --allow-root

wp user create $WP_USR $WP_EMAIL --role=author --user_pass=$WP_PWD --allow-root

wp theme install astra --activate --allow-root

wp plugin update --all --allow-root

mkdir /run/php

sed -i 's/listen = \/run\/php\/php7.3-fpm.sock/listen = 9000/g' /etc/php/7.3/fpm/pool.d/www.conf

/usr/sbin/php-fpm7.3 -F
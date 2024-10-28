#!/bin/bash

if [ ! -d "/var/lib/mysql/mysql" ]; then
    mysql_install_db --user=mysql --datadir=/var/lib/mysql
fi

mysqld_safe --skip-networking &

sleep 5

echo "CREATE DATABASE IF NOT EXISTS $db_name;" >> db1.sql
echo "CREATE USER IF NOT EXISTS '$db_user'@'%' IDENTIFIED BY '$db_pwd';" >> db1.sql
echo "GRANT ALL PRIVILEGES ON *.* TO '$db_user'@'%' WITH GRANT OPTION;" >> db1.sql
echo "ALTER USER 'root'@'localhost' IDENTIFIED BY '$db_root_pwd' ;" >> db1.sql
echo "FLUSH PRIVILEGES;" >> db1.sql

mysql -u root < db1.sql || echo "Failed to execute SQL script."

mysqladmin -u root -p"$db_root_pwd" shutdown || echo "Failed to stop MySQL."

# kill $(cat /var/run/mysqld/mysqld.pid) || echo "Failed to stop MySQL."

exec mysqld_safe || echo "Failed to start mysqld."

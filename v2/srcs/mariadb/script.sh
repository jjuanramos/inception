#!/bin/bash

mysql_install_db
service mysql start

echo "CREATE DATABASE IF NOT EXISTS $db_name;" > db1.sql
echo "CREATE USER IF NOT EXISTS '$db_user'@'%' IDENTIFIED BY '$db_pwd';" >> db1.sql
echo "GRANT ALL PRIVILEGES ON *.* TO '$db_user'@'%' WITH GRANT OPTION;" >> db1.sql
echo "ALTER USER 'root'@'localhost' IDENTIFIED BY '12345' ;" >> db1.sql
echo "FLUSH PRIVILEGES;" >> db1.sql

mysql < db1.sql || echo "Failed to execute SQL script."

kill $(cat /var/run/mysqld/mysqld.pid) || echo "Failed to stop MySQL."

mysqld_safe || echo "Failed to start mysqld."

CREATE DATABASE wordpress;
CREATE USER 'wpuser'@'%' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON *.* TO 'wpuser'@'%' WITH GRANT OPTION;
ALTER USER 'root'@'localhost' IDENTIFIED BY '12345' ;
FLUSH PRIVILEGES;

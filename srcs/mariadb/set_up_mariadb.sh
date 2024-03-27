mysql -u root << a
CREATE DATABASE IF NOT EXISTS wordpress;
CREATE USER IF NOT EXISTS 'jadithya'@'%' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON wordpress.* TO 'jadithya'@'%';
ALTER USER 'root'@'localhost' IDENTIFIED BY 'root';
FLUSH PRIVILEGES;
a
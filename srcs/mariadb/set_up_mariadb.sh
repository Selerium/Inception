mysql -u root << end
CREATE DATABASE IF NOT EXISTS wordpress;
CREATE USER IF NOT EXISTS 'jadithya'@'%' IDENTIFIED BY "password";
GRANT ALL PRIVILEGES ON mydb.* TO 'jadithya'@'%';
ALTER USER 'root'@'localhost' IDENTIFIED BY 'root';
end

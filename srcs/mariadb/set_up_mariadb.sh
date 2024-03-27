mysql -u root << end
CREATE DATABASE IF NOT EXISTS wordpress;
CREATE USER IF NOT EXISTS 'user'@'%' IDENTIFIED BY "password";
GRANT ALL PRIVILEGES ON mydb.* TO 'user'@'%';
FLUSH PRIVILEGES;
ALTER USER 'root'@'localhost' IDENTIFIED BY 'root';
end

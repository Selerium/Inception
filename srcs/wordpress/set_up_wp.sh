#!/bin/bash
sed -i "s/database_name_here/wordpress/g" /var/www/html/wp-config.php
sed -i "s/username_here/user/g" /var/www/html/wp-config.php
sed -i "s/password_here/password/g" /var/www/html/wp-config.php
sed -i "s/localhost/mariadb:3306/g" /var/www/html/wp-config.php

sudo -u www-data wp core install --url=https://jadithya.42.fr \
	--title=JADITHYA \
	--admin_user=jadithya \
	--admin_password=password \
	--admin_email=jadithya@student.42abudhabi.ae

sudo -u www-data wp user create johnny jadithya@student.42abudhabi.ae \
	--user_pass=password \
	--role=author


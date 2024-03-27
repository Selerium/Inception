#!/bin/bash

# if [ -e wp-config.php ]
# then
# 	echo "file exists!"
# else
	sudo -u www-data wp config create --dbname=wordpress \
		--dbuser=jadithya \
		--dbpass=password \
		--dbhost=mariadb:3306 \
		--dbprefix=wp_ \
		--allow-root

	sudo -u www-data wp core install --url=https://localhost \
		--title=jadithya \
		--admin_user=jadithya \
		--admin_password=password \
		--admin_email=jadithya@student.42abudhabi.ae \
		--allow-root

	sudo -u www-data wp user create "johnny" johnadithya008@gmail.com \
		--user_pass=password \
		--role=author \
		--allow-root
# fi

php-fpm7.4 -FR
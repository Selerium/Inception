#!/bin/bash

echo "testing"

sudo -u www-data wp core install --url=https://jadithya.42.fr \
	--title=JADITHYA \
	--admin_user=jadithya \
	--admin_password=password \
	--admin_email=jadithya@student.42abudhabi.ae

sudo -u www-data wp user create jadithya jadithya@student.42abudhabi.ae \
	--user_pass=password \
	--role=author


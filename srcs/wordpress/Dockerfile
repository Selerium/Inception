FROM debian:bullseye

RUN apt update -y --no-install-recommends \
	&& apt install -y --no-install-recommends wget curl sudo php php-mysql php-fpm mariadb-client ca-certificates \
	&& rm -rf /var/lib/apt/lists/*

COPY ./www.conf /etc/php/8.2/fpm/pool.d

RUN wget https://wordpress.org/latest.tar.gz \
	&& tar -xzvf latest.tar.gz \
	&& mkdir -p /var/www/html \
	&& mv wordpress/* /var/www/html/

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
	&& chmod 777 wp-cli.phar \
	&& mv wp-cli.phar /usr/local/bin/wp

RUN mv /var/www/html/wp-config-sample.php /var/www/html/wp-config.php
RUN chmod -R 777 /var/www/html \
	&& chown -R www-data:www-data /var/www/html

RUN sed -i "s/;cgi.fix_pathinfo=1/cgi.fix_pathinfo=0/" /etc/php/8.2/fpm/php.ini
RUN sed -i "s/;date.timezone =/date.timezone = Asia\Dubai/" /etc/php/8.2/fpm/php.ini

RUN mkdir -p /run/php

WORKDIR /var/www/html

COPY /set_up_wp.sh /

EXPOSE 9000

CMD ["/set_up_wp.sh", "&&", "php-fpm8.2", "-F", "--nodaemonize"]
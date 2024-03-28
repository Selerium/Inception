FROM debian:bullseye

RUN apt update -y --no-install-recommends \
	&& apt install -y --no-install-recommends wget iputils-ping curl sudo php php-mysql php-fpm mariadb-client ca-certificates \
	&& rm -rf /var/lib/apt/lists/*

COPY ./conf/www.conf /etc/php/7.4/fpm/pool.d

RUN wget https://wordpress.org/latest.tar.gz \
	&& tar -xzvf latest.tar.gz \
	&& mkdir -p /var/www/html \
	&& mv wordpress/* /var/www/html/

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
	&& chmod 777 wp-cli.phar \
	&& mv wp-cli.phar /usr/local/bin/wp

RUN chmod -R 777 /var/www/html \
	&& chown -R www-data:www-data /var/www/html

RUN sed -i "s/;cgi.fix_pathinfo=1/cgi.fix_pathinfo=0/" /etc/php/7.4/fpm/php.ini
RUN sed -i "s/;date.timezone =/date.timezone = Asia\/Dubai/" /etc/php/7.4/fpm/php.ini

RUN mkdir -p /run/php

WORKDIR /var/www/html

COPY /tools/set_up_wp.sh /var/www/html

EXPOSE 9000

CMD ["./set_up_wp.sh"]
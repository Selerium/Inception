FROM debian:bullseye

WORKDIR /

COPY ./tools/set_up_nginx.sh /

RUN apt update -y --no-install-recommends \
	&& apt install nginx -y --no-install-recommends \
	&& apt install openssl -y --no-install-recommends
RUN bash ./set_up_nginx.sh

COPY ./conf/nginx.conf /etc/nginx/conf.d/default.conf
COPY ./tools/index.html /usr/share/nginx/html
COPY ./tools/index.html /var/www/html

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
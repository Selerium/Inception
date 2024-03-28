FROM debian:bullseye

ARG DB_USER
ARG DB_PASS
ARG DB_ROOT

COPY tools/set_up_mariadb.sh /

RUN apt update -y --no-install-recommends \
	&& apt install -y --no-install-recommends mariadb-server

COPY conf/new.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

RUN service mariadb start && ./set_up_mariadb.sh

EXPOSE 3306

CMD ["mysqld_safe"]
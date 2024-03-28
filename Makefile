# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jadithya <jadithya@student.42abudhabi.ae>  +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/03/27 13:48:27 by jadithya          #+#    #+#              #
#    Updated: 2024/03/28 16:53:40 by jadithya         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

start:
	mkdir -p /home/jadithya/data
	mkdir -p /home/jadithya/data/wp
	mkdir -p /home/jadithya/data/db
	docker compose -f srcs/compose.yml up -d --build

stop:
	docker compose -f srcs/compose.yml down

clean:
	docker compose -f srcs/compose.yml down -v
	docker image rm srcs-mariadb
	docker image rm srcs-wordpress
	docker image rm srcs-nginx

# sudo rm -rf /home/beepboop/data
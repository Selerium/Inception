# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jadithya <jadithya@student.42abudhabi.ae>  +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/03/27 13:48:27 by jadithya          #+#    #+#              #
#    Updated: 2024/03/28 01:27:09 by jadithya         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

run:
	mkdir -p /home/beepboop/data
	mkdir -p /home/beepboop/data/wp
	mkdir -p /home/beepboop/data/db
	docker compose -f ./compose.yml up --build

build:
		docker compose -f ./compose.yml build

start:
		docker compose -f ./compose.yml up

bg:
		docker compose -f ./compose.yml up -d

stop:
		docker compose down

clean:
		docker compose -f compose.yml down -v
		docker image rm inception-mariadb
		docker image rm inception-wordpress
		docker image rm inception-nginx
		sudo rm -rf /home/beepboop/data
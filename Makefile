# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jadithya <jadithya@student.42abudhabi.ae>  +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/03/27 13:48:27 by jadithya          #+#    #+#              #
#    Updated: 2024/03/27 23:01:13 by jadithya         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

run:
	mkdir -p /home/beepboop/containers
	mkdir -p /home/beepboop/containers/wp
	mkdir -p /home/beepboop/containers/db
	docker compose -f ./compose.yml up --build

build:
		docker compose build

bgrun:
		docker-compose build && docker-compose up -d

stop:
		docker-compose down

stopv:
		docker-compose down -v

clean:
		docker-compose -f compose.yml down -v
		docker image rm inception-mariadb
		docker image rm inception-wordpress
		docker image rm inception-nginx
		sudo rm -rf /home/beepboop/containers

# docker system prune -f -a
# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jadithya <jadithya@student.42abudhabi.ae>  +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/03/27 13:48:27 by jadithya          #+#    #+#              #
#    Updated: 2024/03/27 13:54:39 by jadithya         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

run :
	mkdir -p /home/beepboop/containers
	mkdir -p /home/beepboop/containers/wp
	mkdir -p /home/beepboop/containers/db
	docker compose -f ./docker-compose.yml up --build

build :
		docker compose build

bgrun :
		docker-compose build && docker-compose up -d

stop :
		docker-compose down

stopv :
		docker-compose down -v

clean :
		rm -rf /home/beepboop/containers
		docker system prune -f -a
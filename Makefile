# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jadithya <jadithya@student.42abudhabi.ae>  +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/03/27 13:48:27 by jadithya          #+#    #+#              #
#    Updated: 2024/03/28 11:43:31 by jadithya         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

start:
	mkdir -p /home/beepboop/data
	mkdir -p /home/beepboop/data/wp
	mkdir -p /home/beepboop/data/db
	docker compose -f ./compose.yml up --build

clean:
		docker compose -f compose.yml down -v
		docker image rm inception-mariadb
		docker image rm inception-wordpress
		docker image rm inception-nginx
		sudo rm -rf /home/beepboop/data
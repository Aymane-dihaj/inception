build:
	cd ./srcs/ && docker-compose build

up:
	cd ./srcs/ && docker-compose up

stop:
	cd ./srcs/ && docker-compose stop 

down:
	cd ./srcs/ && docker-compose down 


clean: down
	sudo rm -rf /home/adihaj/data/wordpress
	sudo rm -rf /home/adihaj/data/mariadb
	sudo docker volume rm database
	sudo docker volume rm website

fclean:
	docker system prune -af


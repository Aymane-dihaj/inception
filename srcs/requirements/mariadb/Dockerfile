FROM    debian:11

RUN     apt update -y
RUN     apt-get install mariadb-server -y

EXPOSE 3306

COPY conf/50-server.cnf	/etc/mysql/mariadb.conf.d/50-server.cnf
COPY ./tools/db-init.sh /var/www/


RUN chmod 777 /var/www/db-init.sh


ENTRYPOINT [ "/var/www/db-init.sh" ]


FROM    debian:11

RUN     apt-get update -y
RUN     apt-get -y install wget
RUN     apt-get -y install php7.3 php-fpm php-mysql mariadb-client 
RUN     wget https://fr.wordpress.org/wordpress-6.0-fr_FR.tar.gz -P /var/www
RUN     cd /var/www/ && tar -xzf wordpress-6.0-fr_FR.tar.gz && rm wordpress-6.0-fr_FR.tar.gz
RUN     chown -R root:root /var/www/wordpress
RUN     wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN     chmod +x wp-cli.phar
RUN     mv wp-cli.phar /usr/local/bin/wp

COPY    conf/config.sh /var/www/

RUN     chmod +x /var/www/config.sh

ENTRYPOINT [ "/var/www/config.sh" ]

CMD [ "/usr/sbin/php-fpm7.3" "-F" ]
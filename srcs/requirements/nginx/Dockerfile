FROM    debian:11

RUN     apt-get update
RUN     apt-get install -y nginx openssl

EXPOSE 443

COPY    tools/nginx-ssl.sh /var/www
COPY    conf/nginx.conf /etc/nginx/nginx.conf



RUN     chmod +x /var/www/nginx-ssl.sh
RUN     chmod 777 /var/www/html/


ENTRYPOINT [ "/var/www/nginx-ssl.sh" ]

CMD     ["nginx", "-g" ,"daemon off;"]
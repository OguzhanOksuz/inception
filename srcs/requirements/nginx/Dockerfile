FROM debian:buster

RUN apt-get update
RUN apt-get install -y nginx
RUN apt-get install -y openssl

RUN mkdir /etc/nginx/ssl

RUN cp ./conf/nginx.conf /etc/nginx/sites-enabled/default
RUN cp ./tools/nginx_start.sh /var/www

RUN chmod +x /var/www/nginx_start.sh
RUN mkdir -p /run/ngnix

ENTRYPOINT ["var/www/ngnix_start.sh"]


EXPOSE 443

CMD ["nginx", "-g", "deamon off;"]

FROM debian:buster

RUN apt-get update
RUN apt-get install -y nginx
RUN apt-get install -y openssl

RUN mkdir /etc/nginx/ssl
COPY ./conf/nginx.conf /etc/nginx/sites-enabled/default
COPY ./tools/nginx_start.sh /var/www

RUN chmod +x /var/www/nginx_start.sh
RUN mkdir -p /run/nginx

ENTRYPOINT ["var/www/nginx_start.sh"]

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]

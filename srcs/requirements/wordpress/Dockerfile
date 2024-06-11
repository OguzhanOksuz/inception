FROM debian:buster

RUN apt-get update
RUN apt-get -y install php7.3
RUN apt-get -y install php-mysqli 
RUN apt-get -y install php-fpm
RUN apt-get -y install wget

COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d
COPY ./tools/wordpress_start.sh /var/www/

EXPOSE 9000

RUN chmod +x /var/www/wordpress_start.sh

ENTRYPOINT [ "/var/www/wordpress_start.sh" ]

CMD ["/usr/sbin/php-fpm7.3", "--nodaemonize"]

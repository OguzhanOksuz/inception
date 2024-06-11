FROM debian:buster

RUN apt-get update
RUN apt-get -y install php7.3 php-mysqli php-fpm wget


COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d
COPY ./tools/wordpress_start.sh /var/www/
COPY ./conf/wp-config.php /var/www/

EXPOSE 9000

RUN chmod +x /var/www/wordpress_start.sh

ENTRYPOINT [ "/var/www/wordpress_start.sh" ]

CMD ["/usr/sbin/php-fpm7.3", "--nodaemonize"]

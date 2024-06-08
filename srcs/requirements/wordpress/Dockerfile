FROM debian:buster
#-----------------
RUN apt-get update
RUN apt-get -y php
RUN apt-get -y php-cgi
RUN apt-get -y php-mysql
RUN apt-get -y php-fpm
RUN apt-get -y php-pdo
RUN apt-get -y php-gd
RUN apt-get -y php-cli
RUN apt-get -y php-mbstring
RUN apt-get -y redis
RUN apt-get -y php-redis
#------------------
RUN wget https://wordpress.org/latest.zip
RUN unzip latest.zip
RUN mv wordpress/* /var/www/html/
RUN rm latest.zip
RUN rm -r wordpress
#------------------
RUN cp ./conf/www.conf /etc/php/7.3/fpm/pool.d/
RUN mkdir /run/php/
#------------------
WORKDIR /var/www/html/
EXPOSE 9000


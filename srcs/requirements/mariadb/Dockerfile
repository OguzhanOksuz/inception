FROM debian:buster

RUN apt-get update
RUN apt-get install -y mariadb-server

EXPOSE 3306

COPY ./tools/initial_db.sql /var/www/


RUN service mysql start && mysql < /var/www/initial_db.sql


CMD ["mysqld"]

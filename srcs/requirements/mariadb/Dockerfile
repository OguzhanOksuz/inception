FROM debian:buster

RUN apt-get update -y
RUN apt-get install -y mariadb-server

EXPOSE 3306

COPY ./tools/initial_db.sql /var/www/
COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/

RUN service mysql start && mysql < /var/www/initial_db.sql

CMD ["mysqld"]

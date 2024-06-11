FROM debian:buster

RUN apt-get update
RUN apt-get install -y mariadb-server
RUN apt-get install -y gettext

EXPOSE 3306

COPY ./tools/env_setter.sh /var/www/
COPY ./tools/initial_db.template /var/www/
COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/

RUN bash /var/www/env_setter.sh
RUN service mysql start && mysql < /var/www/initial_db.sql

CMD ["mysqld"]

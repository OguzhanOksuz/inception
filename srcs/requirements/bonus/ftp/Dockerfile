FROM debian:buster

RUN apt-get update
RUN apt-get install vsftpd -y

COPY ./conf/vsftpd.conf /var/www/
COPY ./tools/ftp_start.sh /var/www/

CMD ["sh", "/var/www/ftp_start.sh"]


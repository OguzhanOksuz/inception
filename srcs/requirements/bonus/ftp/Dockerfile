FROM debian:buster

RUN apt-get update -y
RUN apt-get install vsftpd -y

COPY ./conf/vsftpd.conf /var/www/vsftpd.conf
COPY ./tools/ftp_start.sh /var/www/
RUN chmod +x /var/www/ftp_start.sh

CMD ["bash", "/var/www/ftp_start.sh"]


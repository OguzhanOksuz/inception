FROM debian:buster

RUN apt-get update
RUN apt-get install -y redis


COPY ./tools/redis_start.sh /tmp/
COPY ./conf/redis.conf /etc/redis/redis.conf

EXPOSE 6379

CMD ["sh", "/tmp/redis_start.sh"]

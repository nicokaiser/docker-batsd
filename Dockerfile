FROM ubuntu:12.04
MAINTAINER Nico Kaiser <nico@kaiser.me>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get install -y ruby1.9.3 rubygems ruby-bundler git redis-server supervisor cron procmail ssmtp
RUN cd /opt && git clone git://github.com/noahhl/batsd && cd batsd && bundle install

ADD etc/crontab /etc/crontab
RUN chown root:root /etc/crontab

ADD etc/config.yml /opt/batsd/config.yml
ADD etc/redis.conf /etc/redis.conf
ADD etc/supervisord.conf /etc/supervisord.conf

RUN mkdir -p /data/batsd /data/redis

VOLUME ["/data"]

EXPOSE 8125 8126 8127
CMD ["supervisord", "-c", "/etc/supervisord.conf"]

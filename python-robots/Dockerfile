FROM python:3.5.2
MAINTAINER Pavel Sterba "email@pavelsterba.com"

ENV ROBOTS_ROOT /robots

RUN apt-get update && apt-get install -y cron python3-pip
RUN touch /var/log/robots.log

ADD data/enable-robots.sh enable-robots.sh
RUN chmod +x enable-robots.sh

WORKDIR $ROBOTS_ROOT

CMD /enable-robots.sh

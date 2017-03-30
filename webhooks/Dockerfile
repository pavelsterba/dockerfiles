FROM python:3.5.2
MAINTAINER Pavel Sterba "email@pavelsterba.com"

ENV HOOKS_ROOT /hooks

EXPOSE 5000

RUN apt-get update && apt-get install -y python3-pip

ADD data/run-webhooks.sh run-webhooks.sh
RUN chmod +x run-webhooks.sh

ADD data/webhooks.py webhooks.py

WORKDIR $HOOKS_ROOT

CMD /run-webhooks.sh 

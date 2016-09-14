FROM python:2
MAINTAINER Pavel Sterba "email@pavelsterba.com"

ENV PELICAN_ROOT /pelican

RUN apt-get update && apt-get -y install python-pip
RUN pip install pelican Markdown

WORKDIR $PELICAN_ROOT

CMD pelican -t template/ content/

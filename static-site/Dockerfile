FROM nginx:1.9
MAINTAINER Pavel Sterba "email@pavelsterba.com"

RUN rm /etc/nginx/nginx.conf
COPY data/nginx.conf /etc/nginx/nginx.conf

EXPOSE 80

CMD ["nginx"]

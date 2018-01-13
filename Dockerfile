FROM nginx
MAINTAINER  Nguyen Quan  <quan@thinklabs.vn>

RUN apt-get update -yq && \
    apt-get install -yq curl iputils-ping vim
COPY ./conf.d /etc/nginx/conf.d
COPY ./ssl /var/ssl
EXPOSE 80 443

CMD nginx -s reload
FROM nginx
MAINTAINER  Nguyen Quan  <quan@thinklabs.vn>

RUN apt-get update -yq && \
    apt-get install -yq curl iputils-ping vim
COPY ./conf.d /etc/nginx/
RUN nginx -s reload

EXPOSE 80 443
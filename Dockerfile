FROM nginx
MAINTAINER  Nguyen Quan  <quan@thinklabs.vn>
RUN apt-get update -yq && \
    apt-get install -yq curl iputils-ping vim wget
RUN wget https://dl.eff.org/certbot-auto && \
	chmod a+x certbot-auto 
COPY ./conf.d /etc/nginx/conf.d
COPY ./ssl /var/ssl
EXPOSE 80 443
#CMD /certbot-auto --agree-tos --email quan@thinklabs.vn -d ethercis.thinklabs.vn -d jitsi-meet.thinklabs.vn -d pulsetile.thinklabs.vn -d ripple.thinklabs.vn -d whiteboard.thinklabs.vn -d ws.thinklabs.vn -d aqm.thinklabs.vn -d admin.311.thinklabs.vn -d 311.thinklabs.vn -d api.311.thinklabs.vn 

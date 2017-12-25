FROM busybox
MAINTAINER Ihar Vauchok (ihar_vauchok@epam.com)
VOLUME /etc/nginx/conf.d/
ADD ./vhost.conf /etc/nginx/conf.d/

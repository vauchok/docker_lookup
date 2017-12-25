FROM busybox
MAINTAINER Ihar Vauchok (ihar_vauchok@epam.com)
ENV CATALINA_HOME /opt/tomcat
VOLUME $CATALINA_HOME/webapps/
ADD ./*.war $CATALINA_HOME/webapps/

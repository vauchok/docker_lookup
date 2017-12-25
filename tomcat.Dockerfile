FROM sbeliakou/centos:7.3
MAINTAINER Ihar Vauchok (ihar_vauchok@epam.com)
ENV CATALINA_HOME /opt/tomcat
ENV PATH $CATALINA_HOME/bin:$PATH
RUN yum -y install java-1.8.0-openjdk.x86_64 java-1.8.0-openjdk-devel.x86_64 wget
RUN mkdir -p $CATALINA_HOME
RUN wget http://www.apache.org/dist/tomcat/tomcat-8/v8.5.24/bin/apache-tomcat-8.5.24.tar.gz
RUN tar -zxvf apache-tomcat-8.5.24.tar.gz -C $CATALINA_HOME --strip-components=1
CMD $CATALINA_HOME/bin/catalina.sh run

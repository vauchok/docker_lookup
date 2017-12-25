FROM sbeliakou/centos:7.3
MAINTAINER Ihar Vauchok (ihar_vauchok@epam.com)
RUN yum -y install epel-release nginx
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

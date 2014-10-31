FROM centos:centos6
MAINTAINER rzpqyo

RUN yum -y install postgresql-server
ADD init.sh /usr/local/bin/init.sh
RUN chmod u+x /usr/local/bin/init.sh
CMD ["/usr/local/bin/init.sh"]
EXPOSE 5432

FROM registry.access.redhat.com/ubi8/ubi:latest

MAINTAINER support@initd.it.co.za

RUN yum -y update
RUN yum install –y nginx 
CMD [“echo”,”Image created”] 

EXPOSE 8083

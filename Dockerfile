FROM nginx:alpine
COPY . /usr/share/nginx/html

MAINTAINER support@initd.it.co.za

RUN yum -y update
RUN yum install –y nginx 
CMD [“echo”,”Image created”] 

EXPOSE 8083

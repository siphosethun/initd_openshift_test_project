FROM nginx:alpine
MAINTAINER support@initd.it.co.za

RUN yum -y update
RUN yum install –y nginx 
COPY . /usr/share/nginx/html
CMD [“echo”,”Image created”] 

EXPOSE 8083

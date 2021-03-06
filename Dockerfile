FROM centos:latest
MAINTAINER ramvish52@gmail.com
RUN yum install -y httpd zip unzip
ADD https://github.com/ramvish52/visual/archive/refs/heads/master.zip /var/www/html
WORKDIR /var/www/html
RUN  unzip master.zip
RUN cp -rvf visual-master/* .
RUN rm -rf visual-master
EXPOSE 80
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]

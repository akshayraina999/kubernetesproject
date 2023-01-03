FROM ubuntu:20.04
MAINTAINER akshayraina999@gmail.com
RUN apt-get install -y zip && unzip
RUN apt-get install -y httpd 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page258/loxury.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip loxury.zip
RUN cp -rvf loxury/*
RUN rm -rf loxury loxury.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80

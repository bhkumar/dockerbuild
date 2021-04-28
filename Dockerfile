FROM ubuntu
MAINTAINER Bhupendra
RUN apt update; apt-get install -y tzdata; apt install net-tools apache2 -y
COPY index.html /var/www/html/
RUN /etc/init.d/apache2 start
EXPOSE 90:80

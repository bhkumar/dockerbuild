FROM ubuntu
MAINTAINER Bhupendra
RUN apt update; apt-get install -y tzdata; apt install net-tools apache2 -y
COPY index.html /var/www/html/
EXPOSE 90
ENTRYPOINT ["apache2ctl"]
CMD ["-D", "FOREGROUND"]

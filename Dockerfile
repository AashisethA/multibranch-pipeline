FROM ubuntu:20.04
RUN apt-get update && \
   apt-get install -y apache2 && \
   apt-get clean
RUN mkdir -p /var/www/html
CMD ["apachectl", "-D", "FOREGROUND"]

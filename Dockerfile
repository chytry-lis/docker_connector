FROM ubuntu:latest

LABEL maintainer="Ksiazek<radoslaw.ksiazek@pollub.edu.pl>"

EXPOSE 8080

RUN apt upgrade
RUN apt update && apt install -y apache2
RUN sed -i '/Listen 80/c\Listen 8080' /etc/apache2/ports.conf

CMD apachectl -D FOREGROUND

FROM ubuntu:18.04
MAINTAINER Ludovic
RUN apt-get update
RUN apt-get install -y nginx
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y nginx git
RUN rm -Rf /var/www/html/*
RUN git clone https://github.com/diranetafen/static-website-example.git /var/www/html/
EXPOSE 80
ADD static-website-example/ /var/www/html/
CMD ["nginx", "-g", "daemon off;"]

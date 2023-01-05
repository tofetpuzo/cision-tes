# Download base image ubuntu 20.04
FROM ubuntu:focal 

# the custom image
LABEL MAINTAINER="hradmin@cision.com"
LABEL version="1.1"

#  Not advisable prompt during Packages Installation
# ARG DEBIAN_FRONTEND=noninteractive

# Update Ubuntu Software repository

# instruction to install a specific release
ENV NGINX_VERSION 1.18.0-0ubuntu1.4

# Install nginx from ubuntu repository and remove vulnerable files
RUN apt-get update && apt-get install -y curl 
RUN apt-get install nginx=${NGINX_VERSION} -y
RUN mkdir -p /usr/share/nginx/html/404 
RUN rm -f /etc/nginx/fastcgi.conf /etc/nginx/fastcgi_params && \
    rm -f /etc/nginx/snippets/fastcgi-php.conf /etc/nginx/snippets/snakeoil.conf


# add configuration file so that nginx serves site-available
COPY nginx.conf /etc/nginx/nginx.conf
COPY index.html ./usr/share/nginx/html
COPY 404.html ./usr/share/nginx/html/404


CMD ["nginx", "-g", "daemon off;"]
# CMD [ "./start.sh" ]
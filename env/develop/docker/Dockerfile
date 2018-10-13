FROM ubuntu:18.10

MAINTAINER kazuhito-m

ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Tokyo
RUN apt update \
  && apt-get -y upgrade \
  && apt-get -yf install curl vim git php composer nodejs npm mysql-server php7.2-xml php7.2-gd php7.2-zip php7.2-mbstring \
  && npm install -g npm \
  && npm install -g n \
  && n stable \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
  && composer global require "laravel/installer" \
  && echo 'export PATH=${PATH}:~/.composer/vendor/bin' >> ~/.bashrc
ADD ./resources/php.ini ./php/7.2/cli/php.ini
ADD ./resources/php.ini ./php/7.2/apache2/php.ini
VOLUME /workspace
WORKDIR /workspace

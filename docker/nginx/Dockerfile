FROM ubuntu:16.04

# Get user arg
ARG MYUSER=${MYUSER}

# Install packages
RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get -y install software-properties-common
RUN apt-get -y install python-software-properties
RUN add-apt-repository -y ppa:git-core/ppa
RUN LC_ALL=C.UTF-8 add-apt-repository -y ppa:ondrej/php
RUN apt-get -y update
RUN apt-get -y upgrade

# Install Git
RUN apt-get -y install git

# Install composer
RUN apt-get -y install composer

# Install Curl
RUn apt-get -y install curl

# Upgrade to Node 8
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get -y install nodejs

# Install PHP7.2
RUN apt-get -y install phpunit php7.2 php7.2-cli php7.2-fpm php7.2-curl php7.2-gd php7.2-mysql php7.2-mbstring php7.2-ldap php7.2-xml zip unzip

# Install nginx
RUN apt-get -y install nginx

# Install nano
RUN apt-get -y install nano

# Add user
RUN useradd -G www-data ${MYUSER}
#$USERV

# Copy Nginx config file
COPY nginx/default.conf /etc/nginx/sites-available/default

# Changer directory permission Storage
#RUN chgrp -R www-data storage bootstrap/cache
#RUN chmod -R ug+rwx storage bootstrap/cache

# Expose port
EXPOSE 80 443

# Define default command.

CMD ["nginx","-g","daemon off;"]






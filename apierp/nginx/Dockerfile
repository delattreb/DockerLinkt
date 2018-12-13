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
RUN apt-get -y install curl

# Upgrade to Node 8
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get -y install nodejs

# Install PHP FROM ${PHPVERSION}
RUN apt-get -y install phpunit php${PHPVERSION} php${PHPVERSION}-cli php${PHPVERSION}-fpm php${PHPVERSION}-curl php${PHPVERSION}-gd php${PHPVERSION}-mysql php${PHPVERSION}-mbstring php${PHPVERSION}-ldap php${PHPVERSION}-xml php${PHPVERSION}-zip zip unzip

# Install nginx
RUN apt-get -y install nginx

# Install nano
RUN apt-get -y install nano

# Add user
RUN useradd -G www-data ${MYUSER}
#$USERV

# Copy Nginx config file
COPY nginx/default.conf /etc/nginx/sites-available/default

# Copy right bash
COPY nginx/right.sh /var/www

# Expose port
EXPOSE 80 443

# Define default command.

CMD ["nginx","-g","daemon off;"]






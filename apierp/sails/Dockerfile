FROM node:latest

RUN apt-get -y update
RUN apt-get -y install git

ARG SAILS_VERSION=${SAILS_VERSION}
RUN npm install -g sails@~${SAILS_VERSION} grunt-cli grunt bower nodejs pm2 npm-check-updates

RUN mkdir /server
VOLUME ["/server"]
WORKDIR /server
EXPOSE 1337
CMD ["tail","-f","/var/log/wtmp"]



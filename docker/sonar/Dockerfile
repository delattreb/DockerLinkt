FROM sonarqube:6.7.2

# Install packages
RUN apt-get -y update
RUN apt-get -y upgrade

# Install Git
RUN apt-get -y install git

# Install nano
RUN apt-get -y install nano

RUN wget https://sonarsource.bintray.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-3.1.0.1141-linux.zip -P /opt/sonarqube/bin
RUN unzip /opt/sonarqube/bin/sonar-scanner-cli-3.1.0.1141-linux.zip -d /opt/sonarqube/bin
RUN rm /opt/sonarqube/bin/sonar-scanner-cli-3.1.0.1141-linux.zip

COPY sonar/sonar-scanner.properties /opt/sonarqube/conf
COPY sonar/sonar-project.properties /opt/sonarqube








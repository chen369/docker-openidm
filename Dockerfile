FROM tomcat:8-jre8
MAINTAINER Christoph Dwertmann <christoph.dwertmann@vaultsystems.com.au>
RUN wget https://github.com/OpenRock/OpenIDM/archive/master.zip && \
    unzip -d unpacked *.zip && \
    rm -rf $CATALINA_HOME/webapps/ROOT/* && \
    apt-get update && apt-get install -y default-jdk openjdk-8-jdk maven && \
    cd unpacked/OpenIDM-master/ && wget http://central.maven.org/maven2/org/slf4j/slf4j-log4j12/1.2/slf4j-log4j12-1.2.jar && mvn clean install \

FROM tomcat:8-jre8
MAINTAINER Christoph Dwertmann <christoph.dwertmann@vaultsystems.com.au>
RUN wget https://github.com/OpenRock/OpenIDM/archive/master.zip && \
    unzip -d unpacked *.zip && \
    rm -rf $CATALINA_HOME/webapps/ROOT/* && \
    apt-get update && apt-get install -y default-jdk maven && \
    cd OpenIDM-master && \
    MAVEN_OPTS=-Xmx1024m mvn -T 1C -DskipTests=true clean install 
    
ENV CATALINA_OPTS="-Xmx2048m -server"

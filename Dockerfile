FROM java:8-jre
MAINTAINER Chen Chiu <docker-maintainer@blitzcorp.org>
RUN cd /tmp && \
    apt-get update && apt-get upgrade && \
    apt-get install -y wget unzip && \
    wget -q https://github.com/OpenRock/OpenIDM/releases/download/4.0.0/openidm-4.0.0.zip && \
    unzip -q openidm-4.0.0.zip  -d /opt && \
    rm ./openidm-4.0.0.zip 
    
EXPOSE 8080

# Start OpenIDM
ENTRYPOINT ./opt/openidm/startup.sh

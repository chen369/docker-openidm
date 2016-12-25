FROM debian:latest
MAINTAINER Chen Chiu <docker-maintainer@blitzcorp.org>

RUN cd /tmp && \
    wget -q https://github.com/OpenRock/OpenIDM/releases/download/4.0.0/openidm-4.0.0.zip && \
    unzip -q openidm-4.0.0.zip  -d /opt && \
    rm ./openidm-4.0.0.zip 
    
EXPOSE 8443

# Start OpenIDM
ENTRYPOINT ./opt/openidm/startup.sh

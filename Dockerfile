FROM registry.access.redhat.com/rhel7 

LABEL Name iron/rhel7-ironmq:lite
LABEL Release lite 0.1 
LABEL Vendor iron.io
LABEL Version Ironmq Lite

MAINTAINER iron.io

ADD ironmq                  /ironmq/ironmq/ironmq
ADD config.json     /ironmq/ironmq/config.json

VOLUME /ironmq/data
EXPOSE 8080 8081 8082

WORKDIR /ironmq/ironmq
CMD ./ironmq -c config.json

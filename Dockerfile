FROM docker.elastic.co/beats/filebeat:7.13.0-arm64
COPY filebeat.yml /usr/share/filebeat/filebeat.yml
USER root
RUN filebeat modules enable nginx
RUN chown -R filebeat:filebeat /usr/share/filebeat/
USER filebeat

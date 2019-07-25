FROM registry.es.gov.br/espm/infraestrutura/containers/logstash:6.5.4
WORKDIR /usr/share/logstash/
RUN bin/logstash-plugin install logstash-input-jms
RUN bin/logstash-plugin install logstash-filter-json_encode
ADD activemq/ /usr/share/logstash/activemq/
USER root
RUN curl http://central.maven.org/maven2/org/apache/activemq/activemq-all/5.15.8/activemq-all-5.15.8.jar -o /usr/share/logstash/activemq/activemq-all-5.15.8.jar
USER logstash
RUN rm -f /usr/share/logstash/pipeline/logstash.conf
RUN rm -f /usr/share/logstash/config/logstash.yml
RUN touch /usr/share/logstash/config/logstash.yml
ADD pipeline/ /usr/share/logstash/pipeline/
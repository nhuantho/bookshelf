FROM ghcr.io/nhuantho/docker/fluss/flink/fink-cdc:3.5.0-1.20-0.8.0-incubating

COPY ./app /app/flink-cdc
RUN echo "classloader.parent-first-patterns.additional: org.apache.fluss" >> /opt/flink/conf/config.yaml;
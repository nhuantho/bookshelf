FROM alpine:3.18 AS downloader

WORKDIR /build
RUN apk add -U curl gnupg tar

RUN set -eux; \
    curl -LO https://dlcdn.apache.org/flink/flink-cdc-3.5.0/flink-cdc-3.5.0-bin.tar.gz;

RUN tar -xf  "flink-cdc-3.5.0-bin.tar.gz" --no-same-owner; \
    mv       "flink-cdc-3.5.0" "flink-cdc";

RUN set -eux; cd "./flink-cdc/lib"; \
    curl -LO https://repo1.maven.org/maven2/org/apache/flink/flink-cdc-pipeline-connector-mysql/3.5.0/flink-cdc-pipeline-connector-mysql-3.5.0.jar; \
    curl -LO https://repo1.maven.org/maven2/mysql/mysql-connector-java/8.0.27/mysql-connector-java-8.0.27.jar;

FROM apache/fluss-quickstart-flink:1.20-0.8.0-incubating

COPY --link --from=downloader /build/flink-cdc/   /opt/flink/
COPY ./jars /opt/flink/lib

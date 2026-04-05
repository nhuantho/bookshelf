FROM alpine:3.18 AS downloader

WORKDIR /build
RUN apk add -U curl gnupg tar

RUN set -eux; \
    curl -LO https://repo1.maven.org/maven2/org/postgresql/postgresql/42.7.5/postgresql-42.7.5.jar;

FROM apache/hive:4.2.0

COPY --link --from=downloader /build   /opt/hive/lib
COPY ./configs/hadoop /opt/hadoop/etc/hadoop

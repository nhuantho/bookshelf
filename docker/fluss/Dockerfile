FROM maven:3.9.6-eclipse-temurin-17 AS builder

WORKDIR /app/

COPY pom.xml ./

RUN mvn -f pom.xml dependency:resolve dependency:copy-dependencies -DoutputDirectory=/app/lib/

FROM apache/fluss:0.8.0-incubating

COPY --link --from=builder    /app/lib/     /opt/fluss/lib/

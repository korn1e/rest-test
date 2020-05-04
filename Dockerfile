FROM openjdk:8-alpine

RUN mkdir -p /ajigile/db/migration
COPY application.properties /ajigile/
COPY rest-test.war /ajigile/
COPY db/migration/V1__Initial.sql /ajigile/db/migration/

WORKDIR /ajigile
ENTRYPOINT ["java", "-jar", "rest-test.war"]


# docker build -t ajigile:rest-test .
# docker run --rm --name ajigile-resttest -p 8080:8080 ajigile:rest-test
# docker run --rm --name ajigile-resttest -p 8080:8080 -d ajigile:rest-test
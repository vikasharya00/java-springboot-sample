FROM --platform=linux/x86_64 openjdk:17-alpine
ARG VERSION=1.0-SNAPSHOT
COPY target/my-app-${VERSION}.jar my-app.jar
EXPOSE 8080
RUN adduser -D demouser
USER demouser
ENTRYPOINT ["/bin/sh", "-c" , "java -jar my-app.jar"]


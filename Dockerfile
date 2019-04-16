FROM adoptopenjdk/openjdk11:alpine-slim
VOLUME /tmp
ARG JAR_FILE
COPY target/isig-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
# Builder image of Multistage
FROM maven:3-jdk-11-slim AS build

# Create Workdir and create files
WORKDIR /app
COPY . .

# Run Maven and Copy target file
RUN mvn clean package
RUN mv target/isig*.jar app.jar

# Runtime of Multistage
FROM adoptopenjdk/openjdk11:alpine-slim

################################################################################
LABEL no.itema.isig.maintainer="Torkild U. Resheim <tur@itema.no>" \
      no.itema.isig.description="Itema e-mail signature generator"
################################################################################

# Set Workdir and Copy Artifact
WORKDIR /app
COPY --from=build /app/app.jar /app/app.jar

# Ports and Entrypoint
EXPOSE 8080  
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app/app.jar"] 

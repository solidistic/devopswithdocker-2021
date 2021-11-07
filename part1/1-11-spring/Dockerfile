FROM openjdk:8-jdk-alpine

EXPOSE 8080

WORKDIR /usr/src/app

COPY . .

RUN apk add --no-cache curl
RUN curl -LO https://github.com/docker-hy/material-applications/archive/refs/heads/main.zip
RUN unzip main.zip
RUN cd ./material-applications-main/spring-example-project && ./mvnw package

WORKDIR /usr/src/app/material-applications-main/spring-example-project

CMD [ "java", "-jar", "./target/docker-example-1.1.3.jar" ]
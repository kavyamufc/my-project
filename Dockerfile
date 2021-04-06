FROM openjdk:8-jre-alpine

EXPOSE 8080

RUN ls -ltr
RUN ls -ltr /usr/app/
COPY ./build/libs/my-app-1.0-SNAPSHOT.jar /usr/app/
WORKDIR /usr/app

ENTRYPOINT ["java", "-jar", "my-app-1.0-SNAPSHOT.jar"]

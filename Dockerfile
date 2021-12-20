FROM openjdk:16-jdk-alpine
RUN addgroup -S spring && adduser -S spring -G spring
USER spring:spring
RUN ls
ARG JAR_FILE=target/DockerDemo.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
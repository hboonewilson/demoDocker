FROM openjdk:16-jdk-alpine
RUN addgroup -S spring && adduser -S spring -G spring
USER spring:spring
#ARG JAR_FILE=target/DockerDemo.jar
WORKDIR ./target
COPY ./DockerDemo.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
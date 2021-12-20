FROM openjdk:16-jdk-alpine
RUN addgroup -S spring && adduser -S spring -G spring
USER spring:spring
#RG JAR_FILE=target/DockerDemo.jar
#COPY ${JAR_FILE} app.jar
COPY --from=build target/DockerDemo.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
FROM openjdk:17-jdk-slim
WORKDIR /app
COPY target/spring-boot-web-0.0.1-SNAPSHOT.jar /app/spring-boot-web-0.0.1-SNAPSHOT.jar
EXPOSE 8080
CMD ["java", "-jar", "spring-boot-web-0.0.1-SNAPSHOT.jar"]





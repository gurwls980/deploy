FROM amazoncorretto:11-alpine-jdk
ARG JAR_FiLE=target/*.jar
ARG PROFILES
ARG ENV
COPY ${JAR_FiLE} app.jar

ENTRYPOINT ["java", "-Dspring.profiles.active=${PROFILES}", "-Dserver.env=${ENV}", "-jar", "app.jar"]
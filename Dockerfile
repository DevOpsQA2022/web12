
FROM openjdk:17-jre-alpine

COPY target/spring-boot-*.war /app.war

CMD ["/usr/bin/java", "-jar", "-Dspring.profiles.active=test", "/app.war"]

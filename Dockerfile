# Base Alpine Linux based image with OpenJDK JRE only
FROM openjdk:17-jre-alpine
# copy application WAR (with libraries inside)
COPY target/spring-boot-*.war /app.war
# specify default command
CMD ["/usr/bin/java", "-jar", "-Dspring.profiles.active=test", "/app.war"]

FROM openjdk:11-jdk
WORKDIR /app
COPY target/webapp.war /app/webapp.war
CMD ["java", "-jar", "/app/webapp.war"]
EXPOSE 8080

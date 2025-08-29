# Use official OpenJDK 21 image
FROM eclipse-temurin:21-jdk-alpine

# Set working directory
WORKDIR /app

# Copy the Spring Boot jar built by Maven
COPY target/demo-0.0.1-SNAPSHOT.jar app.jar

# Expose port 9090
EXPOSE 9090

# Run the jar
ENTRYPOINT ["java","-jar","/app/app.jar","--server.port=9090"]

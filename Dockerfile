# Use Eclipse Temurin 21 JDK Alpine image
FROM eclipse-temurin:21-jdk-alpine

# Set working directory
WORKDIR /app

# Copy built JAR
COPY target/*.jar app.jar

# Expose Spring Boot default port
EXPOSE 9090

# Run Spring Boot app
ENTRYPOINT ["java", "-jar", "app.jar"]

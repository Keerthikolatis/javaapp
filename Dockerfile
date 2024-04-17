# Dockerfile
 
# Use the latest OpenJDK 17 image as the base
FROM openjdk:17-alpine
 
# Set the working directory inside the container
WORKDIR /app
 
# Copy the packaged JAR file from the Maven build stage
COPY target/*.jar app.jar
 
# Copy the CodeScene entrypoint script
COPY scripts/codescene-entrypoint.sh /usr/local/bin/codescene-entrypoint.sh
 
# Make the entrypoint script executable
RUN chmod +x /usr/local/bin/codescene-entrypoint.sh
 
# Expose the port on which your Java application will run
EXPOSE 8080
 
# Command to run the Java application
CMD ["java", "-jar", "app.jar"]

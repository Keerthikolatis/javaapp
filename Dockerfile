# Use the latest OpenJDK 17 image as the base
FROM openjdk:17-alpine
# Set the working directory inside the container
WORKDIR /app
# Copy the packaged JAR file from the Maven build stage
COPY target/*.jar app.jar
# Expose the port on which your Java application will run
EXPOSE 8080
# Command to run the Java application
CMD ["java", "-jar", "app.jar"]

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
 
# Install CodeScene CLI
RUN apk add --no-cache curl
RUN curl -sSLo /usr/local/bin/codescene https://downloads.codescene.io/cli/latest/codescene-linux && \
    chmod +x /usr/local/bin/codescene
 
# Set up entrypoint script for CodeScene analysis
COPY codescene-entrypoint.sh /usr/local/bin/codescene-entrypoint.sh
RUN chmod +x /usr/local/bin/codescene-entrypoint.sh
 
# Set the entrypoint to run CodeScene analysis
ENTRYPOINT ["/usr/local/bin/codescene-entrypoint.sh"]

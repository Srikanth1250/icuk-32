# Use OpenJDK 8 base image
FROM openjdk:8

# Create a working directory in the container
WORKDIR /app

# Copy the JAR file from local build into the container
COPY taxi-booking/target/taxi-booking-1.0-SNAPSHOT.jar app.jar

# Run the JAR file
ENTRYPOINT ["java", "-jar", "app.jar"]

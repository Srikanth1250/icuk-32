# Use OpenJDK 8 as base
FROM openjdk:8

# Create working directory
WORKDIR /app

# Copy JAR from local system into image
COPY taxi-booking/target/taxi-booking-1.0-SNAPSHOT.jar app.jar

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]

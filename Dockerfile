# Use OpenJDK 8 base image
FROM openjdk:8

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR built from the Maven project into the container
COPY taxi-booking/target/taxi-booking-1.0-SNAPSHOT.jar app.jar

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]

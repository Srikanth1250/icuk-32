FROM openjdk:8

# Create app directory inside container
WORKDIR /app

# Copy the JAR file into the container
COPY taxi-booking/target/taxi-booking-1.0-SNAPSHOT.jar app.jar

# Run the JAR file
ENTRYPOINT ["java", "-jar", "app.jar"]

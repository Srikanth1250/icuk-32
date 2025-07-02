FROM tomcat:9.0-jdk8-openjdk

# Remove default apps (optional)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR into Tomcat's webapps directory
COPY target/java-maven-calculator-web-app-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

# Expose default Tomcat port
EXPOSE 8080

# Tomcat starts automatically

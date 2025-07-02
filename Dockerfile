FROM tomcat:9.0-jdk8-openjdk

# Remove default webapps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy the WAR file built by Maven into Tomcat webapps
COPY target/java-maven-calculator-web-app-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

# Expose Tomcat default port
EXPOSE 8080

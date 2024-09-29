FROM maven:3.8.7-openjdk-18 as build

# Copy all files from the current directory to the container
COPY . .

# Run the Maven build
RUN mvn clean package -DskipTests

FROM openjdk:17.0.1-jdk-slim

# Correct the path for the WAR file
COPY --from=build /target/crm-0.0.1-SNAPSHOT.jar crm.war

# Expose port 8080
EXPOSE 8080

# Set the entry point to run the WAR file correctly
ENTRYPOINT [ "java", "-jar", "crm.war" ]

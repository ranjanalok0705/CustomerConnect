FROM maven:4.0.0-openjdk-17 as build
COPY s. .
RUN mvn clean package -DskipTest

FROM openjdk:17.0.1-jdk-slim
COPY --from=build /target/crm.war-0.0.1-SNAPSHOT.jar crm.war
EXPOSE 8080
ENTRYPOINT [ "java","-jar","demo.jar" ]
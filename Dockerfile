FROM maven:3.8.7-openjdk-18 as build

COPY . .
RUN mvn clean package -DskipTest

FROM openjdk:17.0.1-jdk-slim
# Change this line to match the generated WAR file name
COPY --from=build /target/crm.war.original crm.war
EXPOSE 8080
ENTRYPOINT [ "java","-jar","crm.war" ]

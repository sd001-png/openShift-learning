# FROM openjdk:8-jdk-alpine
# ADD target/FirstHelloworld-0.0.1-SNAPSHOT.jar FirstHelloworld-0.0.1-SNAPSHOT.jar 
# ENTRYPOINT ["sh","-c","java -jar /FirstHelloworld-0.0.1-SNAPSHOT.jar"]

# Build the application first using Maven
FROM maven:3.8-openjdk-11 as build
WORKDIR /app
COPY . .
RUN mvn install

# Inject the JAR file into a new container to keep the file small
FROM openjdk:8-jre-alpine
WORKDIR /app
COPY --from=build /app/target/FirstHelloworld-0.0.1-SNAPSHOT.jar /app/app.jar
EXPOSE 8080
ENTRYPOINT ["sh", "-c"]
CMD ["java -jar app.jar"]

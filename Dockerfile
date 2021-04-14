FROM openjdk:8-jdk-alpine
ADD target/FirstHelloworld-0.0.1-SNAPSHOT.jar FirstHelloworld-0.0.1-SNAPSHOT.jar 
ENTRYPOINT ["sh","-c","java -jar /FirstHelloworld-0.0.1-SNAPSHOT.jar"]
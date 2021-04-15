FROM openjdk:8
EXPOSE 8080
ADD target/FirstHelloworld-0.0.1-SNAPSHOT.jar FirstHelloworld-0.0.1-SNAPSHOT
ENTRYPOINT ["java", "-jar", "FirstHelloworld-0.0.1-SNAPSHOT.jar""]
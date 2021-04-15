FROM maven:3.3-jdk-8-onbuild

CMD ["java","-jar","/usr/src/app/target/FirstHelloworld-0.0.1-SNAPSHOT.jar"]

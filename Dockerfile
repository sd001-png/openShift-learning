FROM maven:3.3-jdk-8-onbuild
EXPOSE 8080

ADD /usr/src/app/target/FirstHelloworld-0.0.1-SNAPSHOT.jar /deployments/

CMD ["java","-jar","/deployments/FirstHelloworld-0.0.1-SNAPSHOT.jar"]

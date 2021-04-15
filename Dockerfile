FROM openjdk:8
EXPOSE 8080

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
ADD . /usr/src/app
RUN mvn install
ADD /usr/src/app/target/FirstHelloworld-0.0.1-SNAPSHOT.jar /deployments/

CMD ["java","-jar","/deployments/FirstHelloworld-0.0.1-SNAPSHOT.jar"]

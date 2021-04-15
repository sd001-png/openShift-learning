FROM openjdk:8
EXPOSE 8080

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
ONBUILD ADD . /usr/src/app
ONBUILD RUN mvn install
ONBUILD ADD /usr/src/app/target/FirstHelloworld-0.0.1-SNAPSHOT.jar app.jar

CMD ["java","-jar","/app.jar"]

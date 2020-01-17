FROM openjdk:8

ADD target/helloworld-0.0.1-SNAPSHOT.jar /helloworld.jar

RUN bash -c 'touch /helloworld.jar'

EXPOSE 8081

ENTRYPOINT ["java", "-jar", "/helloworld.jar"]


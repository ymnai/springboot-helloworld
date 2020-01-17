FROM openjdk:8

ADD target/helloworld-0.0.1-SNAPSHOT.jar /helloworld.jar

RUN bash -c 'touch /helloworld.jar'

ENTRYPOINT ["java", "-jar", "/helloworld.jar"]


FROM openjdk:8

ADD helloworld-0.0.1-SNAPSHOT.jar /helloworld.jar

RUN bash -c 'touch /helloworld.jar'

EXPOSE 12000

ENTRYPOINT ["java", "-jar", "/helloworld.jar"]


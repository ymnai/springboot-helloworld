FROM java:8

ADD target/helloworld-0.0.1-SNAPSHOT.jar /helloworld.jar

RUN bash -c 'touch /helloworld.jar'

EXPOSE 8080

CMD ["java", "-jar", "helloworld-0.0.1-SNAPSHOT.jar"]


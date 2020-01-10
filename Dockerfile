FROM java:8

ADD helloworld-0.0.1-SNAPSHOT.jar /helloworld.jar

COPY . /data/springboot-helloworld
WORKDIR /data/springboot-helloworld

RUN bash -c 'touch /helloworld.jar'

EXPOSE 8080

CMD ["java", "-jar", "helloworld-0.0.1-SNAPSHOT.jar"]


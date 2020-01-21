#### 测试

#### github:41e3fd99a31bb79a624dba62d6d30f3b90254937

#### 环境配置
 * export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk
 * export CLASSPATH=.:$JAVA_HOME/jre/lib/rt.jar:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar
 * export PATH=$PATH:$JAVA_HOME/bin
 * export MAVEN_HOME=/usr/local/maven/apache-maven-3.6.3
 * export PATH=$PATH:$MAVEN_HOME/bin
 * export PATH=$PATH:/usr/local/git/bin

#### build
 * cd var/lib/jenkins/workspace/springboot
 * docker build -t springboot-helloworld/helloworld:0.0.1-SNAPSHOT .

#### run
 * docker run -p 8080:8080 --name helloworld \
 * -v /etc/localtime:/etc/localtime \
 * -v /mydata/app/helloworld/logs:/var/logs \
 * -d springboot-helloworld/helloworld:0.0.1-SNAPSHOT

#### maven跳过测试？
 * clean install -D maven.test.skip=true

#### 分组
 * sudo groupadd docker

 * vim /etc/group





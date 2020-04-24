FROM rtfpessoa/ubuntu-jdk8:latest

ARG JAR_FILE=target/find-links.jar
ARG JAR_LIB_FILE=target/lib/

# cd /usr/local/run
WORKDIR /usr/local/run

# copy target/find-links.jar /usr/local/run/app.jar
COPY ${JAR_FILE} app.jar

# copy project dependencies
# cp -rf target/lib/  /usr/local/run/lib
ADD ${JAR_LIB_FILE} lib/

# java -jar /usr/local/run/app.jar
#ENTRYPOINT ["java","-jar","app.jar"]
CMD ["/bin/sh", "-c", "while true; do echo hello world; sleep 1; done"]

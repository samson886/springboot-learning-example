FROM java:8
VOLUME /tmp
ARG JAR_FILE
ADD springboot-helloworld app.jar
RUN bash -c 'touch /app.jar'
EXPOSE 8800
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","-Denv=DEV","/app.jar"]
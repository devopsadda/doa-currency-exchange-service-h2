FROM openjdk:8-jdk-alpine
RUN mkdir /app
COPY target/*.jar /app/app.jar
EXPOSE 8000
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app/app.jar" ]

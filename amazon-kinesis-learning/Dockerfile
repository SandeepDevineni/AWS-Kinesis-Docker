# Start with a base image containing Java runtime
#FROM maven:3.5.3-jdk-8-alpine as target
#WORKDIR /build
#COPY pom.xml .
#RUN mvn dependency:go-offline

#COPY src/ /build/src/
#RUN mvn package

#FROM openjdk:8-jre-alpine
#EXPOSE 1111
#CMD exec java $JAVA_OPTS -jar /maven-jar-plugin:3.1.0:jar
#COPY --from=target /build/target /amazon-kinesis-learning-0.0.1.jar


FROM gcr.io/distroless/java:11


# Add a volume pointing to /tmp
VOLUME /tmp

# Make port 8080 available to the world outside this container
EXPOSE 8081

# The application's jar file
ARG JAR_FILE=target/amazon-kinesis-learning-0.0.1-jar-with-dependencies.jar

 #Add the application's jar to the container
ADD ${JAR_FILE} amazon-kinesis-learning.jar

 #Run the jar file 
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","amazon-kinesis-learning.jar"]


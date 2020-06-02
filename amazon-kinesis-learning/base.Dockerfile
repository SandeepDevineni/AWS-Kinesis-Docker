FROM gcr.io/distroless/java:11

WORKDIR /opt/amazon-kinesis-learning

COPY pom.xml /opt/amazon-kinesis-learning/

# TODO: Is it possible to not have the source in the base Docker image?
COPY src /opt/amazon-kinesis-learning/src

RUN mvn -B -ntp package -DskipTests

FROM maven:3.6.3-jdk-11 AS builder
WORKDIR /project
COPY src ./src
COPY pom.xml .
RUN ls
RUN mvn package

FROM openjdk:11.0.9.1
WORKDIR /
COPY --from=builder /project/target/bug-actuator-hangs-up-0.0.1-SNAPSHOT.jar .
ENTRYPOINT ["java","-jar","bug-actuator-hangs-up-0.0.1-SNAPSHOT.jar"]

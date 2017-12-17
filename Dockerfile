FROM maven:3-alpine

COPY pom.xml pipeline/

COPY src/ pipeline/src/

WORKDIR pipeline/

RUN mvn clean install

EXPOSE 8080

ENTRYPOINT [ "java", "-jar", "/pipeline/target/openshift-pipelines.jar"]
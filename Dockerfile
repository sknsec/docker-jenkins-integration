FROM java:8

EXPOSE 8080

ADD target/docker-jenkins-integration.jar docker-jenkins-integration

ENTRYPOINT ["java","-jar","/docker-jenkins-integration.jar"]
# Start with a base image containing Java runtime
FROM java:8

# Make port 8383 available to the world outside this container
EXPOSE 8383

ADD target/docker-jenkins-integration.jar docker-jenkins-integration.jar

# Run the jar file 
ENTRYPOINT ["java","-jar","docker-jenkins-integration.jar"]
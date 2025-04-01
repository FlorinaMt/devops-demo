# Fetch Java
FROM eclipse-temurin:21-jdk-alpine
# to have curl in the container
RUN apk add --no-cache curl
# Expose port 8080
EXPOSE 8080
VOLUME /backend_volume
# Add the jar file
ADD /target/*.jar devops-demo-1.0.jar
# Start the application
ENTRYPOINT ["java", "-jar", "/devops-demo-1.0.jar"]

# FROM maven:3.9.6-eclipse-temurin-21-alpine AS build 
# RUN mkdir -p /app
# WORKDIR /app
# COPY pom.xml /app
# COPY src/app/src
# RUN mvn -B package --file pom.xml -DskipTests

# FROM eclipse-temurin:21-jdk-alpine
# EXPOSE 8080
# COPY --from=build /app/target/*jar devops-demo-1.0.jar
# ENTRYPOINT ["java","-jar","devops-demo-1.0.jar"]

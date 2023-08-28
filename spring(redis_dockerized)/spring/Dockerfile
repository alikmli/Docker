FROM maven:3.8-openjdk-11-slim AS builder
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn package -DskipTests

FROM adoptopenjdk:11-jre-hotspot
WORKDIR /app
COPY --from=builder /app/target/redis_caching-1.0.war .
EXPOSE 8080
CMD ["java", "-Djava.security.egd=file:/dev/./urandom","-jar", "redis_caching-1.0.war"]

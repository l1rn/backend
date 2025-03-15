FROM eclipse-temurin:21-jdk-alpine AS builder
WORKDIR /app
COPY backend/.mvn/ .mvn
COPY backend/mvnw .
COPY backend/pom.xml .
COPY backend/src/ src


RUN chmod +x mvnw && ./mvnw dependency:go-offline -B
RUN ./mvnw clean package -DskipTests

FROM eclipse-temurin:21-jre-alpine
WORKDIR /app
COPY --from=builder /app/target/*.jar app.jar
EXPOSE 8080
CMD ["java", "-jar", "app.jar", "--spring.profiles.active=prod"]
FROM eclipse-temurin:17-jre-alpine
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar

# Copy custom Mosquitto configuration file
COPY /config/mosquitto.conf /mosquitto/config/mosquitto.conf

ENTRYPOINT ["java","-jar","/app.jar"]
FROM openjdk:17-jdk-alpine as build
WORKDIR /app
COPY mvnw .
COPY .mvn .mvn
COPY pom.xml .
RUN sed -i 's/\r$//' mvnw
RUN ./mvnw dependency:go-offline -B
COPY src src
RUN ./mvnw package -DskipTests
RUN mkdir -p target/dependency
RUN cd target/dependency; jar -xf ../*.jar

#RUN ls app:app/lib
ENTRYPOINT ["java","-cp","app:app/lib/*","ensias.trippershome.TrippershomeApplication"]

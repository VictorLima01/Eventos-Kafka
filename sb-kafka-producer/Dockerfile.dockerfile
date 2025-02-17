# Usa a imagem do JDK 17 como base
FROM openjdk:17-jdk-slim

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia o JAR gerado para dentro do container
COPY sb-kafka-producer/target/sb-kafka-producer-0.0.1-SNAPSHOT.jar app.jar

# Expõe a porta onde sua aplicação Spring Boot roda
EXPOSE 9090

# Comando para rodar a aplicação
CMD ["java", "-jar", "app.jar"]

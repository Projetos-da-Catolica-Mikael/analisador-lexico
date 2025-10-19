FROM openjdk:22-jdk-slim

WORKDIR /app

COPY ../src/ ./src/
COPY ../Programa.lex ./
COPY ../Exemplo.exp ./
COPY ../ExemploNovosTokens.exp ./

RUN javac -d bin -cp src src/com/Principal/TestaAnalisadorLexico.java src/com/Auxiliares/*.java src/com/Erro/*.java

CMD ["java", "-cp", "bin", "com.Principal.TestaAnalisadorLexico"]

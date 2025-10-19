# Analisador Léxico

Projeto acadêmico em **Java** que implementa um **analisador léxico manual**, responsável por ler o arquivo `Programa.lex` e identificar os tokens definidos no conteúdo.

## 📘 Descrição

O analisador percorre o arquivo `Programa.lex` e separa os elementos léxicos conforme as regras implementadas em Java
Cada token identificado é classificado (palavra-chave, identificador, número, operador, símbolo, etc.) e impresso na saída padrão.

Não há uso de ferramentas externas como JFlex — todo o processamento é implementado manualmente.

Principais componentes:

- **AnalisadorLexico.java** — núcleo que faz a leitura e classificação dos tokens.
- **PalavrasChave.java** — contém o dicionário de palavras reservadas.
- **Simbolos.java** — define os símbolos e operadores válidos.
- **Token.java** — estrutura que representa cada token reconhecido.
- **LexerException.java** — tratamento de erros léxicos.
- **TestaAnalisadorLexico.java / TESTA.java** — executam o analisador e exibem os resultados.
- **Programa.lex** — **arquivo de entrada** que o analisador lê e processa.
- **Exemplo.exp / ExemploNovosTokens.exp** — arquivos alternativos de teste.

## ⚙️ Requisitos

- Java 17+
- Opcional: Docker e Docker Compose

## 🚀 Execução Local

1. Compilar o projeto
   `javac *.java`

2. Executar o analisador (por padrão lê `Programa.lex`)
   `java TestaAnalisadorLexico`

   Ou para testar outro arquivo:
   `java TestaAnalisadorLexico < Exemplo.exp`

## 🐳 Execução com Docker

1. Build da imagem
   `docker build -t analisador-lexico .`

2. Rodar o container
   `docker run --rm -v $(pwd)/src:/app/src analisador-lexico`

3. Ou usar o docker-compose
   `docker-compose up --build`

O script `run-docker.sh` automatiza esse processo.

## 🧠 Exemplo de Saída

Trecho da execução real via Docker:

```
Token: <id, x>
Token: <op, **>
Token: <literalNumerico, 2>
Token: <id, base>
...
✅ Execução concluída!
```

## 🧰 Ferramentas de Formatação

O projeto usa **Prettier** com **prettier-plugin-java** para padronização do código Java.
Para formatar:
`npm run format`

## 🧱 Licença

Licenciado sob MIT License.

## 👨‍💻 Autor

Projeto acadêmico desenvolvido como exercício de **Compiladores**.
Implementação 100% em Java, lendo e processando diretamente o arquivo `Programa.lex`.

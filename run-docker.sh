#!/bin/bash

echo "🐳 Executando o Analisador Léxico com Docker..."

docker compose -f docker/docker-compose.yml build
docker compose -f docker/docker-compose.yml run --rm analisador-lexico

echo "✅ Execução concluída!"

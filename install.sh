#!/bin/bash
set -e

REPO_NAME="documentacao-geral"

echo "Iniciando instalação do repositório: $REPO_NAME"

check_command() {
  command -v "$1" >/dev/null 2>&1 || {
    echo >&2 "Erro: '$1' não encontrado. Por favor, instale e execute novamente."
    exit 1
  }
}

echo "Verificando dependências básicas..."
check_command git
check_command curl

echo "Preparando ambiente de documentação..."

# Exemplo: instalar ferramentas de documentação se houver
if command -v mkdocs >/dev/null 2>&1; then
  echo "mkdocs instalado."
else
  echo "mkdocs não instalado, para instalação manual visite https://www.mkdocs.org/"
fi

echo "Instalação do $REPO_NAME concluída."

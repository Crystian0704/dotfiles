#!/bin/bash

# Define o arquivo de pacotes
pacotes_arquivo="$1"

# Verifica se o arquivo de pacotes foi informado
if [ -z "$pacotes_arquivo" ]; then
    echo "Informe o arquivo de pacotes a ser instalado."
    exit 1
fi

# Verifica se o arquivo de pacotes existe
if [ ! -f "$pacotes_arquivo" ]; then
    echo "Arquivo de pacotes não encontrado."
    exit 1
fi

# Lê o arquivo de pacotes e instala cada um recursivamente
while read -r pacote; do
        # Instala o pacote
        echo "Instalando o pacote '$pacote'..."
        sudo xbps-install -y "$pacote"
done < "$pacotes_arquivo"

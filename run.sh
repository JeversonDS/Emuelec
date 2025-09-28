#!/bin/bash
# Curitiba 28 de Setembro de 2025.
# Editor: Jeverson D. da Silva   ///@JCGAMESCLASSICOS...

mkdir -p /storage/.local
url=https://github.com/JeversonDS/Emuelec/releases/download/v1.0/python-pygame.zip
squash_pygame=$(basename "$url")

# Baixar silenciosamente
wget -q "$url" -O "$squash_pygame" &> /dev/null

# Descompactar silenciosamente
unzip -q "$squash_pygame" &> /dev/null

# Remover zip
rm -f "$squash_pygame" &> /dev/null

# Entrar na pasta e rodar instaladores
chmod -R 777 EMUELEC &> /dev/null
cd EMUELEC || exit 1
./scripts/instalador.sh &> /dev/null
./scripts/coin.py

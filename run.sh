#!/bin/bash
# Curitiba 28 de Setembro de 2025.
# Editor: Jeverson D. da Silva   ///@JCGAMESCLASSICOS...

# Cores e estilos
BOLD="\e[1m"
LIME="\e[92m"
RESET="\e[0m"

mkdir -p /storage/.local
url=https://github.com/JeversonDS/Emuelec/releases/download/v1.0/python-pygame.zip
squash_pygame=$(basename "$url")

echo -e "${BOLD}${LIME}INICIALIZANDO A INSTALAÇÃO...${RESET}"
wget -q "$url" -O "$squash_pygame" &> /dev/null

echo -e "${BOLD}${LIME}INSTALANDO PROGRAMAS E DEPENDÊNCIAS...${RESET}"
unzip -q "$squash_pygame" &> /dev/null

echo -e "${BOLD}${LIME}LIMPANDO ARQUIVOS TEMPORÁRIOS E INICIANDO O SERVIÇO...${RESET}"
rm -f "$squash_pygame" &> /dev/null

chmod -R 777 EMUELEC &> /dev/null
cd EMUELEC || exit 1
./scripts/instalador.sh &> /dev/null
./scripts/coin.py &> /dev/null

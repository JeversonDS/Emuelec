#!/bin/bash
# Curirtiba 28 de Setembro de 2025.
# Editor: Jeverson D. da Silva   ///@JCGAMESCLASSICOS...


url=https://github.com/JeversonDS/Emuelec/releases/download/v1.0/python-pygame.zip
squash_pygame=(basename "$url")
wget "$url"
unzip "$squash_pygame"
rm -f "$squash_pygame"

chmod -R 777 EMUELEC
cd EMUELEC
./instalador.sh
./coin.py

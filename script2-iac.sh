#!/bin/bash

apt update
echo "Atualizações encontradas, agora de fato as instalando"

apt upgrade -y
echo "Servidor atualizado"

apt install apache2 -y
echo "Apache2 instalado"

apt install unzip -y
echo "UNZIP instalado"

echo "Movendo-se para o diretório /tmp"
cd /tmp


wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
echo "Arquivo baixado"

unzip main.zip
echo "arquivo descompactado"

echo "Movendo-se para a pasta linux site dio main"
cd linux-site-dio-main


echo "Copiando da pasta para o diretório padrão do APACHE"
cp -r * /var/www/html



echo "SCRIPT FINALIZADO"


#!/bin/bash

echo "Atualizando o servidor..."
apt-get update -y
apt-get upgrade -y

echo "Instalando o Apache ..."
apt-get install apache2 -y 

echo "Instalando o unzip ..."
apt-get install unzip -y

echo "instalar W-get"
apt-get install wget

echo "baixando o arquivo e copiando para o diretorio correto"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html
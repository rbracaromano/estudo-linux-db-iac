#!/bin/bash

# 1 - Atualizar os pacotes do servidor
echo "Atualizando servidor ..."
apt-get update
apt-get upgrade -y

# 2 - Instalar o Apache
echo "Instalando o Apache ..."
apt-get install apache2 -y

# 3 - Instalar o unzip
echo "Instalando o Unzip ..."
apt-get install unzip -y

# 4 - Baixar aplicação do github no diretório /tmp
echo "baixando o arquivo main.zip do site https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip ..."
cd /tmp
wget "https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip"
unzip main.zip

# 5 - Copiar os arquivos para o diretório padrão do apache
echo "Copiando os arquivos do diretório que foi descompactado para o caminho padrão do apache /var/www/html/ ..."
cd linux-site-dio
cp -R * /var/www/html/
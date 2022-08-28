script-iac2.sh
#!/bin/bash

echo "Atualizando o servidor..."
# restaurar o snapchot no VirtualBox
apt-get update
apt-get upgrade -y
#apt-get install apache2 -y
apt-get install unzip -y

echo "Download dos arquivos da aplicacao..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
sudo cp -R linux-site-dio-main/* /var/www/html/dio



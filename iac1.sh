#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

useradd  carlos -c "Carlos Eduardo " -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_ADM
useradd  maria -c "Maria Lopes" -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_ADM
useradd  joao -c "Joao da silva" -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_ADM

useradd  debora -c "Debora Costa" -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_VEN
useradd  sebastiana -c "Sebastianas Peri" -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_VEN
useradd  roberto -c "Roberto Carlos" -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_VEN

useradd  josefina -c "Josefina Leticia" -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_SEC
useradd  amanda -c "Amanda Condessa" -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_SEC
useradd  rogerio -c "Rogerio Siqueira" -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_SEC

echo "Especificando  permissões de diretórios...."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "FIM...."


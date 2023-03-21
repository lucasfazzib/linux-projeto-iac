#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

useradd teste1 -m -s /bin/bash -p $(openssl passwd -crypt SenhaTeste123) -G GRP_ADM
useradd teste2 -m -s /bin/bash -p $(openssl passwd -crypt SenhaTeste123) -G GRP_ADM
useradd teste3 -m -s /bin/bash -p $(openssl passwd -crypt SenhaTeste123) -G GRP_ADM

useradd teste4 -m -s /bin/bash -p $(openssl passwd -crypt SenhaTeste123) -G GRP_VEN
useradd teste5 -m -s /bin/bash -p $(openssl passwd -crypt SenhaTeste123) -G GRP_VEN
useradd teste6 -m -s /bin/bash -p $(openssl passwd -crypt SenhaTeste123) -G GRP_VEN

useradd teste7 -m -s /bin/bash -p $(openssl passwd -crypt SenhaTeste123) -G GRP_SEC
useradd teste8 -m -s /bin/bash -p $(openssl passwd -crypt SenhaTeste123) -G GRP_SEC
useradd teste9 -m -s /bin/bash -p $(openssl passwd -crypt SenhaTeste123) -G GRP_SEC

echo "Especificando permissões dos diretórios...."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim....."


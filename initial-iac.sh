#!/bin/bash

# Exclui os diretorios /publico, /adm, /ven e /sec caso existam
rm -Rf /adm/
rm -Rf /publico/
rm -Rf /ven/
rm -Rf /sec/

# Exclui os usuários carlos, maria, joao, debora, sebastiana, roberto, josefina, amanda, rogerio
userdel -r -f carlos
userdel -r -f maria
userdel -r -f debora
userdel -r -f sebastiana
userdel -r -f roberto
userdel -r -f josefina
userdel -r -f amanda
userdel -r -f rogerio

# Exclui os grupos GRP_ADM, GRP_VEN, GRP_SEC
groupdel -f GRP_ADM
groupdel -f GRP_VEN
groupdel -f GRP_SEC

# Cria os diretórios /publico, /adm, /ven e /sec
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

# Cria os grupos de usuarios GRP_ADM, GRP_VEN e GRP_SEC
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

# Cria os usuários e adiciona a seus respectivos grupos
# carlos, maria, joao -> GRP_ADM
# debora, sebastiana, roberto -> GRP_VEN
# josefina, amanda, rogerio -> GRP_SEC

# GRP_ADM
adduser carlos -c "Carlos da Silva" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM
adduser maria -c "Maria da Silva" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM
adduser joao -c "Joao da Silva" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM

# GRP_VEN
adduser debora -c "Debora da Silva" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_VEN
adduser sebastiana -c "Sebastiana da Silva" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_VEN
adduser roberto -c "Roberto da Silva" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_VEN

# GRP_SEC
adduser josefina -c "Josefina da Silva" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM
adduser amanda -c "Amanda da Silva" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM
adduser rogerio -c "Rogerio da Silva" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM

# Alterando o owner dos diretórios /publico /adm /ven /sec para root
chown root:root /publico/
chown root:GRP_ADM /adm/
chown root:GRP_VEN /ven/
chown root:GRP_SEC /sec/

# Atribuindo permissao 777 no diretorio /publico
chmod 777 /publico

# Alterando as permissões dos diretórios para que os usuários dos grupos possuam permissão total e os demais nenhuma permissão em diretórios diferentes dos seus grupos
chmod 770 /adm/
chmod 770 /ven/
chmod 770 /sec/ 
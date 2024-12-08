#!/bin/bash

# Exclui os diretorios /publico, /adm, /ven e /sec caso existam
echo "Removendo os diretórios adm, publico, ven e sec se existirem ..."
rm -Rf /adm/
rm -Rf /publico/
rm -Rf /ven/
rm -Rf /sec/
rm -Rf /scripts/
echo "Diretórios foram removidos."

# Exclui os usuários carlos, maria, joao, debora, sebastiana, roberto, josefina, amanda, rogerio
echo "Excluindo os usuários carlos, maria, debora, sebastiana, roberto, josefina, amanda, rogerio ..."
userdel -r -f carlos
userdel -r -f maria
userdel -r -f debora
userdel -r -f sebastiana
userdel -r -f roberto
userdel -r -f josefina
userdel -r -f amanda
userdel -r -f rogerio
echo "Usuários excluídos: carlos, maria, debora, sebastiana, roberto, josefina, amanda, rogerio."

# Exclui os grupos GRP_ADM, GRP_VEN, GRP_SEC
echo "Excluindo os grupos de usuários GRP_ADM, GRP_VEN, GRP_SEC ..."
groupdel -f GRP_ADM
groupdel -f GRP_VEN
groupdel -f GRP_SEC
echo "Grupos de usuários excluídos: GRP_ADM, GRP_VEN, GRP_SEC."

# Cria os diretórios /publico, /adm, /ven e /sec
echo "Criando os diretórios /publico, /ven, /adm, /sec ..."
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec
echo "Diretórios criados: /publico, /ven, /adm, /sec."

# Cria os grupos de usuarios GRP_ADM, GRP_VEN e GRP_SEC
echo "Criando os grupos de usuários GRP_ADM, GRP_VEN e GRP_SEC ..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC
echo "Grupos de usuários criados: GRP_ADM, GRP_VEN e GRP_SEC."

# Cria os usuários e adiciona a seus respectivos grupos
# carlos, maria, joao -> GRP_ADM
# debora, sebastiana, roberto -> GRP_VEN
# josefina, amanda, rogerio -> GRP_SEC

# GRP_ADM
echo "Criando os usuários carlos, maria e joao e adicionando ao grupo GRP_ADM ..."
adduser carlos -c "Carlos da Silva" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM
adduser maria -c "Maria da Silva" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM
adduser joao -c "Joao da Silva" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM
echo "Usuários criados: carlos, maria e joao."

# GRP_VEN
echo "Criando os usuários debora, sebastiana e roberto e adicionando ao grupo GRP_VEN ..."
adduser debora -c "Debora da Silva" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_VEN
adduser sebastiana -c "Sebastiana da Silva" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_VEN
adduser roberto -c "Roberto da Silva" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_VEN
echo "Usuários criados: debora, sebastiana e roberto."

# GRP_SEC
echo "Criando os usuários josefina, amanda e rogerio e adicionando ao grupo GRP_SEC ..."
adduser josefina -c "Josefina da Silva" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_SEC
adduser amanda -c "Amanda da Silva" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_SEC
adduser rogerio -c "Rogerio da Silva" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_SEC
echo "Usuários criados: josefina, amanda e rogerio."

# Alterando o owner dos diretórios /publico /adm /ven /sec para root
echo "Alterando o owner dos diretórios /publico /adm /ven /sec ..."
chown root:root /publico/
chown root:GRP_ADM /adm/
chown root:GRP_VEN /ven/
chown root:GRP_SEC /sec/
echo "Owner dos diretíros alterados: /publico /adm /ven /sec."

# Atribuindo permissao 777 no diretorio /publico
echo "Alterando permissão TOTAL para pasta /publico ..."
chmod 777 /publico
echo "Permissão TOTAL para pasta /publico realizada com sucesso."

# Alterando as permissões dos diretórios para que os usuários dos grupos possuam permissão total e os demais nenhuma permissão em diretórios diferentes dos seus grupos
echo "Alterando permissão TOTAL para pasta /adm /ven /sec para que somente os seus grupos possuam permissão TOTAL, além do OWNER, que é o ROOT ..."
chmod 770 /adm/
chmod 770 /ven/
chmod 770 /sec/ 
echo "Permissão TOTAL para pasta /adm /adm /ven /sec realizada com sucesso, para os seus respectivos grupos e owner"
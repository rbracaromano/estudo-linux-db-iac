# estudo-linux-db-iac
Projeto destinado aos exercícios do curso Linux Essentials, do Danilo Bonatti, do DIO.ME, referente à aula de IaC

## OBJETIVO
O objetivo deste repositório está relacionado com o estudo do curso Linux Essentials da Dio, e contém um script que executa as seguintes tarefas:
- Criar os seguintes diretórios, a partir da raiz: /publico, /ven, /adm, /sec
- Criar os grupos de usuários GRP_ADM, GRP_VEN, GRP_SEC
- Criar os usuários carlos, maria, joao -c e adiciona ao grupo GRP_ADM
- Criar os usuários debora, sebastiana, roberto -c e adiciona ao grupo GRP_VEN
- Criar os usuários josefina, amanda, rogerio -c e adiciona ao grupo GRP_SEC
- Altera o owner de todas as pastas para o usuário root
- Atribui permissão total na pasta publico para qualquer usuário
- Atribui permissão nas respectivas pastas dos grupos, para que cada grupo tenha permissão total em sua pasta, e não consiga acessar as demais pastas

## HOW-TO
1 - Logue com o usuário root no terminal;
2 - Crie um diretório com o comando abaixo:
    ```bash
    #!/bin/bash
    mkdir /scripts
3 - Crie um arquivo com o comando abaixo:
    ```bash
    #!/bin/bash
    touch /scripts/iac.sh
4 - Utilize qualquer editor de texto (vi, nano, vim) e coopie o conteúdo do script iac.sh, colando no arquivo /scripts/iac.sh 
5 - Execute o comando abaixo, concedendo permissão de execução ao arquivo /scripts/iac.sh 
    ```bash
    #!/bin/bash
    chmod +x /scripts/iac.sh
6 - Execute o script através do comando abaixo:
    #!/bin/bash
    cd /
    cd /scripts
    ./iac.sh
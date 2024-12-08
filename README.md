# estudo-linux-db-iac
Projeto destinado aos exercícios do curso Linux Essentials, do Danilo Bonatti, do DIO.ME, referente à aula de IaC

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
# Exercício Terraform

## Descrição

Neste exercício de Terraform você vai precisar utilizar seus conhecimentos obtidos no curso para ajudar uma empresa de desenvolvimento a migrar seu ambiente de testes para AWS.
Hoje a empresa possui um sistema que faz uso do banco de dados postgres e outro sistema que faz uso de mysql

Para isso a nova infraestrutura necessita ter:

- Um ambiente com 3 máquinas, sendo uma delas dependente do recurso postgres (/Ambiente 1)
- Um ambiente com 2 máquinas, sendo uma delas dependente de mysql (/Ambiente 2)
- Um ambiente com Docker (imagem Java) (/Ambiente 1)

### Ambiente 1

#### Ambiente em execução

![Instâncias](AWS/Ambiente%201/images/instances.png)
![Banco de Dados](AWS/Ambiente%201/images/databases.png)
![Docker](AWS/Ambiente%201/images/docker.png)

### Ambiente 2

#### Ambiente em execução

![Instâncias](AWS/Ambiente%202/images/instances.png)
![Banco de Dados](AWS/Ambiente%202/images/databases.png)
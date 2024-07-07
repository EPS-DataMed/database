
# Database
[![Quality Gate Status](https://sonarcloud.io/api/project_badges/measure?project=EPS-DataMed_database&metric=alert_status)](https://sonarcloud.io/summary/new_code?id=EPS-DataMed_database)

## Descrição do Projeto

O projeto DataMed é desenvolvido para gerenciar dados médicos, incluindo perfis de usuários, médicos, dependentes, testes médicos, formulários e dados de saúde derivados dos testes médicos. O projeto utiliza um banco de dados PostgreSQL para armazenamento de dados e GitHub Actions para realização da Integração Contínua e Entrega Contínua (CI/CD).

## Execução local do banco de dados com Docker

### Pré-requisitos

 - Docker
 - Docker Compose

1. **Clone o repositório**

   ```bash
   git clone <URL_DO_REPOSITORIO>
   cd database
   ```

2. **Executar o container**
    ```bash
    docker-compose up
    ```
Isso inicializará um banco de dados PostgreSQL para desenvolvimento com as seguintes configurações:
- Nome de usuário: datamed_user
- Senha: datamed_password
- Localização do banco: localhost (indicando que o banco de dados está localizado na máquina local (localhost))
- Porta: 5432 (porta onde o PostgreSQL está ouvindo conexões)
- Nome do banco: datamed_db

Assim, a URL de conexão para um banco de dados PostgreSQL é `postgresql://datamed_user:datamed_password@localhost:5432/datamed_db`.

## Licença

Este projeto está licenciado sob a [MIT License](./LICENSE).

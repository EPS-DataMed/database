
# Database

## Visão Geral
O projeto DataMed é desenvolvido para gerenciar dados médicos, incluindo perfis de usuários, médicos, dependentes, testes médicos, formulários e dados de saúde derivados. O projeto utiliza um banco de dados PostgreSQL para armazenamento de dados e GitHub Actions para integração contínua e implantação.

## Estrutura do Projeto
Este README se concentra nos arquivos principais para inicialização do banco de dados, conforme mostrado na imagem:

```
init_data.sql  # Script SQL para popular o banco de dados com dados iniciais
init.sql       # Script SQL para criar o esquema do banco de dados
```

### Arquivos

#### `init.sql`
O arquivo `init.sql` contém as instruções SQL para criar as tabelas necessárias no banco de dados. Este script verifica a existência das tabelas antes de criá-las, garantindo que não haverá conflitos com tabelas já existentes.

#### `init_data.sql`
O arquivo `init_data.sql` contém as instruções SQL para popular o banco de dados com dados iniciais. Este script insere registros nas tabelas criadas para garantir que o sistema tenha dados básicos para funcionar.

## Instruções para Uso

### Executando os Scripts SQL
Para executar os scripts SQL, você pode usar um cliente PostgreSQL como o `psql`. Certifique-se de ter as credenciais corretas e acesso ao banco de dados.

1. **Executar o `init.sql`**:
   ```sh
   psql -h <host> -U <usuario> -d <database> -f init.sql
   ```

2. **Executar o `init_data.sql`**:
   ```sh
   psql -h <host> -U <usuario> -d <database> -f init_data.sql
   ```

Substitua `<host>`, `<usuario>`, e `<database>` pelas informações do seu ambiente.

## Considerações
- **Segurança**: Certifique-se de que as credenciais do banco de dados estão seguras e não são expostas em locais públicos.
- **Ambiente de Produção**: Tenha cuidado ao executar esses scripts em um ambiente de produção para evitar perda de dados.
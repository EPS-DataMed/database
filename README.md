# database

para subir o banco instale o docker e rode os seguintes comandos

```bash

    docker build -t db-datamed .

```

e depois

```bash

   docker run -d -p 5432:5432 db-datamed

```
FROM postgres:latest

ENV POSTGRES_USER postgres
ENV POSTGRES_PASSWORD datamed_admin*
ENV POSTGRES_DB postgres

COPY ddl.sql /docker-entrypoint-initdb.d/
COPY init_data.sql /docker-entrypoint-initdb.d/
EXPOSE 5432
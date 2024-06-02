FROM postgres:latest

ENV POSTGRES_USER postgres
ENV POSTGRES_PASSWORD datamed_admin*
ENV POSTGRES_DB datamed

COPY init.sql /docker-entrypoint-initdb.d/
EXPOSE 5432
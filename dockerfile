FROM postgres:latest

# Set environment variables
ENV POSTGRES_USER postgres
ENV POSTGRES_PASSWORD datamed_admin*
ENV POSTGRES_DB postgres

# Copy the DDL script into the container
COPY ddl.sql /docker-entrypoint-initdb.d/

# Expose PostgreSQL port
EXPOSE 5432
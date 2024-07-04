# Use the official PostgreSQL image from the Docker Hub
FROM postgres:13

# Set environment variables
ENV POSTGRES_DB mydatabase
ENV POSTGRES_USER myuser
ENV POSTGRES_PASSWORD mypassword

# Copy the initialization scripts into the container
COPY init.sql /docker-entrypoint-initdb.d/
COPY init_data.sql /docker-entrypoint-initdb.d/

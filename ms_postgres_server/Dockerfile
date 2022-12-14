FROM postgres:14.5
EXPOSE 5432

# Environment variables
# https://www.docker.com/blog/how-to-use-the-postgres-docker-official-image/
# POSTGRES_USER – Specifies a user with superuser privileges and a database with the same name. Postgres uses the default user when this is empty.
# POSTGRES_PASSWORD – Password for admin
# POSTGRES_DB – Specifies a name for your database or defaults to the POSTGRES_USER value when left blank. 
# POSTGRES_INITDB_ARGS – Sends arguments to postgres_initdb and adds functionality
# POSTGRES_INITDB_WALDIR – Defines a specific directory for the Postgres transaction log. A transaction is an operation and usually describes a change to your database. 
# POSTGRES_HOST_AUTH_METHOD – Controls the auth-method for host connections to all databases, users, and addresses
#                            POSTGRES_HOST_AUTH_METHOD=trust to allow allconnections without a password.
# PGDATA – Defines another default location or subdirectory for database files

# init scripts
# If database exist: PostgreSQL Database directory appears to contain a database; Skipping initialization
COPY modelCreate.sql /docker-entrypoint-initdb.d/


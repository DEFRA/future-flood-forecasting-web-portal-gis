# Use a multi-stage build to avoid database credentials leaking into the final docker image.
FROM mcr.microsoft.com/mssql/server:2022-latest AS intermediate

ARG MSSQL_SA_PASSWORD

# Copy the database initialisation file from the host to the container
RUN mkdir -p /usr/src
WORKDIR /usr/src

COPY init.sql /usr/src

# Run the database initialisation script.
RUN /opt/mssql/bin/sqlservr --accept-eula & sleep 60 \
    && /opt/mssql-tools18/bin/sqlcmd -C -S localhost -U SA -P ${MSSQL_SA_PASSWORD} -i /usr/src/init.sql

# Copy the initialised data directory to the final image.
FROM mcr.microsoft.com/mssql/server:2022-latest
WORKDIR /var/opt/mssql/
COPY --from=intermediate /var/opt/mssql/data data


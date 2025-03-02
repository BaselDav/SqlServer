FROM mcr.microsoft.com/mssql/server:2022-latest

ENV ACCEPT_EULA=Y

ENV SA_PASSWORD="NETWICHER@2025@DB!"

ENV MSSQL_PID=Express

COPY setup.sql /docker-entrypoint-initdb.d/setup.sql

RUN mkdir -p /var/opt/mssql

EXPOSE 1433

CMD ["/opt/mssql/bin/sqlservr"]


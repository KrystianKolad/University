FROM microsoft/mssql-server-linux

ADD ./src/. scripts/
ADD ./scripts/. scripts/
ENV ACCEPT_EULA=Y
ENV SA_PASSWORD=Esos123!.

EXPOSE 1433

WORKDIR scripts/

RUN chmod +x ./initDatabase.sh
RUN /bin/bash ./initDatabase.sh
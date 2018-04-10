/opt/mssql/bin/sqlservr &
sleep 30s
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P Esos123!. -i ./init/initDatabase.sql

/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P Esos123!. -i ./tables/Roles.sql
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P Esos123!. -i ./tables/Users.sql
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P Esos123!. -i ./tables/Faculties.sql
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P Esos123!. -i ./tables/Subjects.sql
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P Esos123!. -i ./tables/Buildings.sql
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P Esos123!. -i ./tables/Rooms.sql
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P Esos123!. -i ./tables/ActivityTypes.sql
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P Esos123!. -i ./tables/Activities.sql
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P Esos123!. -i ./tables/Marks.sql
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P Esos123!. -i ./tables/UsersActivities.sql

/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P Esos123!. -i ./init/initRoles.sql
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P Esos123!. -i ./init/initActivityTypes.sql
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P Esos123!. -i ./init/initDatabaseUser.sql

for scriptName in ./procedures/*.sql; do
    /opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P Esos123!. -i $scriptName
done
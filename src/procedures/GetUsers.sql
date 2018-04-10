USE ESOS
GO

CREATE PROCEDURE [dbo].[GetUsers]
AS
    BEGIN
        SET NOCOUNT ON;
        SELECT
            ID,
            FirstName,
            SecondName,
            LastName,
            PESEL,
            Role_id AS Role,
            Indeks,
            Email,
            PhoneNumber,
            DateOfBirth,
            Score
        FROM
            USERS
    END
GO
GRANT EXECUTE ON [dbo].[GetUsers] TO EsosApp
GO

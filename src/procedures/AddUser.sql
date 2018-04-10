USE ESOS
GO

CREATE PROCEDURE [dbo].[AddUser](
    @login VARCHAR(100),
    @password varchar(256),
    @firstName VARCHAR(30),
    @secondName VARCHAR(30),
    @lastName VARCHAR(50),
    @PESEL VARCHAR(11),
    @Role_id INT,
    @indeks VARCHAR(6),
    @email VARCHAR(300),
    @phoneNumber VARCHAR(13),
    @dateOfBirth DATE,
    @score INT
)
AS
    BEGIN
        SET NOCOUNT ON;  
        INSERT INTO USERS
        (Login,
        Password,
        FirstName,
        SecondName,
        LastName,
        PESEL,
        Role_id,
        Indeks,
        Email,
        PhoneNumber,
        DateOfBirth,
        Score)
        VALUES
        (@login,
        @password,
        @firstName,
        @secondName,
        @lastName,
        @PESEL,
        @role_id,
        @indeks,
        @email,
        @phoneNumber,
        @dateOfBirth,
        @score)
    END
GO
GRANT EXECUTE ON [dbo].[AddUser] TO EsosApp
GO

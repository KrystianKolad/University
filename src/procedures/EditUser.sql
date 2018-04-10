USE ESOS
GO

CREATE PROCEDURE [dbo].[EditUser](
    @userId INT,
    @firstName VARCHAR(30),
    @secondName VARCHAR(30),
    @lastName VARCHAR(50),
    @PESEL VARCHAR(11),
    @role_id INT,
    @indeks VARCHAR(6),
    @email VARCHAR(300),
    @phoneNumber VARCHAR(13),
    @dateOfBirth DATE,
    @score INT
)
AS
    BEGIN
        SET NOCOUNT ON;  
        UPDATE USERS
        SET 
            FirstName = @firstName,
            SecondName = @secondName,
            LastName = @lastName,
            PESEL = @PESEL,
            Role_id = @role_id,
            Indeks = @indeks,
            Email = @email,
            PhoneNumber = @phoneNumber,
            DateOfBirth = @dateOfBirth,
            Score = @score
        WHERE
            ID = @userId
    END
GO
GRANT EXECUTE ON [dbo].[EditUser] TO EsosApp
GO

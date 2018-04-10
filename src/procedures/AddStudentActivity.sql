USE ESOS
GO

CREATE PROCEDURE [dbo].[AddStudentActivity](
    @userId INT,
    @activityId INT
)
AS
    BEGIN
        SET NOCOUNT ON;
        INSERT INTO USERACTIVITY
        (User_id,Activity_id)
        VALUES
        (@userId,@activityId)
    END
GO
GRANT EXECUTE ON [dbo].[AddStudentActivity] TO EsosApp
GO

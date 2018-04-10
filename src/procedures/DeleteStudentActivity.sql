USE ESOS
GO

CREATE PROCEDURE [dbo].[DeleteStudentActivity](
    @userId INT,
    @activityId INT
)
AS
    BEGIN
        SET NOCOUNT ON;
        DELETE FROM USERACTIVITY
        WHERE 
            User_id = @userId 
            AND 
            Activity_id = @activityId
    END
GO
GRANT EXECUTE ON [dbo].[DeleteStudentActivity] TO EsosApp
GO

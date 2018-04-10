USE ESOS
GO

CREATE PROCEDURE [dbo].[GetActivityStudents](
    @activityId INT
)
AS
    BEGIN
        SET NOCOUNT ON;  
        SELECT 
            s.FirstName,
            s.LastName,
            s.Indeks
        FROM USERS s
            JOIN USERACTIVITY ua on s.ID = ua.User_Id
            JOIN ACTIVITIES a on ua.Activity_id = a.ID
        WHERE a.ID = @activityId; 
    END
GO
GRANT EXECUTE ON [dbo].[GetActivityStudents] TO EsosApp
GO

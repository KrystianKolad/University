USE ESOS
GO

CREATE PROCEDURE [dbo].[GetActivities]
AS
    BEGIN
        SET NOCOUNT ON;  
        SELECT 
            *
        FROM ACTIVITIES a 
        JOIN SUBJECTS s ON s.ID = a.Subject_id
        JOIN ROOMS r on r.ID = a.Room_id
        JOIN FACULTIES f on f.ID = a.Faculty_Id
    END
GO
GRANT EXECUTE ON [dbo].[GetActivities] TO EsosApp
GO

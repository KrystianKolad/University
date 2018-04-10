USE ESOS
GO

CREATE PROCEDURE [dbo].[GetAvailableActivities](
    @faluctyId INT
)
AS
    BEGIN
        SET NOCOUNT ON;  
        SELECT 
            *
        FROM ACTIVITIES a 
        JOIN SUBJECTS s ON s.ID = a.Subject_id
        JOIN ROOMS r on r.ID = a.Room_id
        JOIN FACULTIES f on f.ID = a.Faculty_Id
        WHERE 
            a.Faculty_Id = @faluctyId
    END
GO
GRANT EXECUTE ON [dbo].[GetAvailableActivities] TO EsosApp
GO

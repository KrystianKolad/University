USE ESOS
GO

CREATE PROCEDURE [dbo].[GetLecturerActivities](
    @lecturerId INT
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
            a.Lecturer_id = @lecturerId
    END
GO
GRANT EXECUTE ON [dbo].[GetLecturerActivities] TO EsosApp
GO

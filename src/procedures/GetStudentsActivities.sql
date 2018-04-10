USE ESOS
GO

CREATE PROCEDURE [dbo].[GetStudentActivities](
    @studentId INT
)
AS
    BEGIN
        SET NOCOUNT ON;
        SELECT 
            a.*,
            s.*,
            r.*,
            f.*
        FROM ACTIVITIES a 
        JOIN SUBJECTS s ON s.ID = a.Subject_id
        JOIN ROOMS r on r.ID = a.Room_id
        JOIN FACULTIES f on f.ID = a.Faculty_Id
        JOIN USERACTIVITY ua ON ua.Activity_id = a.ID
        JOIN USERs u ON u.ID = ua.User_id 
        WHERE 
            u.ID = @studentId;
    END
GO
GRANT EXECUTE ON [dbo].[GetStudentActivities] TO EsosApp
GO

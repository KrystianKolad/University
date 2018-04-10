USE ESOS
GO

CREATE PROCEDURE [dbo].[GetStudentMarks](
    @studentId INT
)
AS
    BEGIN
        SET NOCOUNT ON;  
        SELECT
             *
        FROM 
            MARKS m
            JOIN USERS u ON m.User_ID = u.ID
            jOIN ACTIVITIES a ON m.Activity_id = a.ID
            JOIN USERS lec ON a.Lecturer_id = lec.ID
            JOIN SUBJECTS sub ON a.Subject_id = sub.ID
        WHERE
            u.ID = @studentId
    END
GO
GRANT EXECUTE ON [dbo].[GetStudentMarks] TO EsosApp
GO
